# --
# Copyright (C) 2001-2018 OTRS AG, https://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::Language::nl_GeneralCatalog;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AAAGeneralCatalog
    $Self->{Translation}->{'Functionality'} = 'Functionaliteit';

    # Template: AdminGeneralCatalog
    $Self->{Translation}->{'General Catalog Management'} = 'Catalogus Beheer';
    $Self->{Translation}->{'Add Catalog Item'} = 'Catalogus-item toevoegen';
    $Self->{Translation}->{'Add Catalog Class'} = 'Catalogus-klasse toevoegen';
    $Self->{Translation}->{'Catalog Class'} = 'Catalogus klasse';

    # SysConfig
    $Self->{Translation}->{'Create and manage the General Catalog.'} = 'Aanmaken en beheren van items in de catalogus.';
    $Self->{Translation}->{'Frontend module registration for the AdminGeneralCatalog configuration in the admin area.'} =
        '';
    $Self->{Translation}->{'General Catalog'} = 'Catalogus';
    $Self->{Translation}->{'Parameters for the example comment 2 of the general catalog attributes.'} =
        '';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        '';

}

1;
