# --
# Copyright (C) 2001-2018 OTRS AG, https://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::Language::he_GeneralCatalog;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AAAGeneralCatalog
    $Self->{Translation}->{'Functionality'} = 'פונקציונלי';

    # Template: AdminGeneralCatalog
    $Self->{Translation}->{'General Catalog Management'} = 'ניהול קטלוג כללי';
    $Self->{Translation}->{'Add Catalog Item'} = 'הוסף פריט לקטלוג';
    $Self->{Translation}->{'Add Catalog Class'} = '';
    $Self->{Translation}->{'Catalog Class'} = '';
    $Self->{Translation}->{'Edit Catalog Item'} = '';

    # SysConfig
    $Self->{Translation}->{'Admin.'} = 'מנהל ראשי';
    $Self->{Translation}->{'Create and manage the General Catalog.'} = 'יצירה וניהול של הקטלוג הכללי';
    $Self->{Translation}->{'Frontend module registration for the AdminGeneralCatalog configuration in the admin area.'} =
        '';
    $Self->{Translation}->{'General Catalog'} = 'ניהול קטלוג';
    $Self->{Translation}->{'Parameters for the example comment 2 of the general catalog attributes.'} =
        '';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        '';

}

1;
