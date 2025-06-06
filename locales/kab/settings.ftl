# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.


# Settings page

settings-page-title = Iɣewwaren n { -product-short-name }

## Breach alert preferences

settings-alert-email-preferences-title = Ismenyifen n yimayl
settings-alert-email-preferences-subtitle = Ini-aɣ-d anwi imaylen i tebɣiḍ ad teṭṭfeḍ.
settings-alert-preferences-option-one = Azen ilɣa ɣer tensa imayl yettwaɛnan.

## Monitored email addresses

settings-email-verification-callout = Asenqed n yimayl ilaq
settings-resend-email-verification-link = Ales tuzna n yimayl n usenqed
settings-add-email-button = Rnu tansa imayl
settings-remove-email-button-label = Kkes
# Variables:
#   $emailAddress (string) - The email address to remove, e.g. `billnye@example.com`
settings-remove-email-button-tooltip = Ḥbes taɛessast { $emailAddress }
# This string is shown beneath each of the user’s email addresses to indicate
# how many known breaches that email address was found in.
# Variables:
#   $breachCount (number) - Number of breaches
settings-email-number-of-breaches-info =
    { $breachCount ->
        [one] Yettban-d deg { $breachCount } n trewla n yisefka yettwasnen
       *[other] Yettban-d deg { $breachCount } n terewiliwin n yisefka yettwasnen
    }

## Delete Monitor account

settings-delete-monitor-free-account-title = Kkes amiḍan { -brand-monitor }
settings-delete-monitor-free-account-cta-label = Kkes amiḍan
settings-delete-monitor-free-account-dialog-title = Amiḍan-ik { -brand-monitor } ad yeettwakkes i lebda
settings-delete-monitor-free-account-dialog-cta-label = Kkes amiḍan
settings-delete-monitor-free-account-dialog-cancel-button-label = Beddleɣ ṛṛay, uɣal ɣer deffir
settings-delete-monitor-account-confirmation-toast-label-2 = Amiḍan-ik { -brand-monitor } dayen yettwakkes.
settings-delete-monitor-account-confirmation-toast-dismiss-label = Zgel

## Monthly Monitor Report

settings-alert-preferences-allow-monthly-monitor-report-title = Aneqqis { -brand-monitor } n wayyur

## Settings page redesign

settings-tab-label-edit-info = Ẓreg talɣut-ik⋅im
settings-tab-label-notifications = Sbadu ilɣa
settings-tab-label-manage-account = Sefrek amiḍan
settings-tab-subtitle-manage-account = Sefrek amiḍan-ik⋅im { -product-name }.
settings-tab-notifications-marketing-link-label = Ddu ɣer yiɣewwaren n yimayl { -brand-mozilla }
