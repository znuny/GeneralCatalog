# --
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::en_GB_GeneralCatalog;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # TT Template: Kernel/Output/HTML/Templates/Standard/AAAGeneralCatalog.tt
    $Self->{Translation}->{'Functionality'} = 'Functionality';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminGeneralCatalog.tt
    $Self->{Translation}->{'Add Catalog Item'} = 'Add Catalogue Item';
    $Self->{Translation}->{'Add Catalog Class'} = 'Add Catalogue Class';
    $Self->{Translation}->{'Items in Class'} = '';
    $Self->{Translation}->{'Edit Item'} = '';
    $Self->{Translation}->{'General Catalog Management'} = 'General Catalogue Management';
    $Self->{Translation}->{'Add Class'} = '';
    $Self->{Translation}->{'Add Item'} = '';
    $Self->{Translation}->{'Catalog Class'} = 'Catalog Class';
    $Self->{Translation}->{'Edit Catalog Item'} = 'Edit Catalogue Item';

    # JS File: var/httpd/htdocs/js/ITSM.GeneralCatalog.js
    $Self->{Translation}->{'Warning incident state can not be set to invalid.'} = '';

    # SysConfig
    $Self->{Translation}->{'Comment 2'} = '';
    $Self->{Translation}->{'Create and manage the General Catalog.'} = 'Create and manage the General Catalogue.';
    $Self->{Translation}->{'Define the general catalog comment 2.'} = '';
    $Self->{Translation}->{'Frontend module registration for the AdminGeneralCatalog configuration in the admin area.'} =
        'Frontend module registration for the AdminGeneralCatalogue configuration in the admin area.';
    $Self->{Translation}->{'General Catalog'} = 'General Catalogue';
    $Self->{Translation}->{'Parameters for the example comment 2 of the general catalog attributes.'} =
        'Parameters for the example comment 2 of the general catalogue attributes.';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        'Parameters for the example permission groups of the general catalogue attributes.';
    $Self->{Translation}->{'Permission Group'} = '';


    push @{ $Self->{JavaScriptStrings} // [] }, (
    'Cancel',
    'Warning',
    'Warning incident state can not be set to invalid.',
    );

}

1;
