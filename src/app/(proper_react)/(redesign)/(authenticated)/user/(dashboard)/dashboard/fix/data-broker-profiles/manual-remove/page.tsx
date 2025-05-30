/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import { redirect } from "next/navigation";
import { headers } from "next/headers";
import { getServerSession } from "../../../../../../../../../functions/server/getServerSession";
import { getScanResultsWithBroker } from "../../../../../../../../../../db/tables/onerep_scans";
import { getOnerepProfileId } from "../../../../../../../../../../db/tables/subscribers";
import { getSubscriberBreaches } from "../../../../../../../../../functions/server/getSubscriberBreaches";
import { ManualRemoveView } from "./ManualRemoveView";
import { hasPremium } from "../../../../../../../../../functions/universal/user";
import { getCountryCode } from "../../../../../../../../../functions/server/getCountryCode";
import { getSubscriberEmails } from "../../../../../../../../../functions/server/getSubscriberEmails";
import { isEligibleForPremium } from "../../../../../../../../../functions/universal/premium";
import { getEnabledFeatureFlags } from "../../../../../../../../../../db/tables/featureFlags";

export default async function ManualRemovePage() {
  const session = await getServerSession();

  if (!session?.user?.subscriber?.id) {
    redirect("/user/dashboard");
  }

  const enabledFeatureFlags = await getEnabledFeatureFlags({
    email: session.user.email,
  });

  const countryCode = getCountryCode(await headers());
  const profileId = await getOnerepProfileId(session.user.subscriber.id);
  const scanData = await getScanResultsWithBroker(
    profileId,
    hasPremium(session.user),
  );
  const subBreaches = await getSubscriberBreaches({
    fxaUid: session.user.subscriber.fxa_uid,
    countryCode,
  });
  const subscriberEmails = await getSubscriberEmails(session.user);

  return (
    <ManualRemoveView
      breaches={subBreaches}
      scanData={scanData}
      isPremiumUser={hasPremium(session.user)}
      isEligibleForPremium={isEligibleForPremium(countryCode)}
      user={session.user}
      countryCode={countryCode}
      subscriberEmails={subscriberEmails}
      enabledFeatureFlags={enabledFeatureFlags}
    />
  );
}
