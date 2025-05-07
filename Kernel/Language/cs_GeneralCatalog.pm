# --
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::cs_GeneralCatalog;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # TT Template: Kernel/Output/HTML/Templates/Standard/AAAGeneralCatalog.tt
    $Self->{Translation}->{'Functionality'} = 'Funkcionalita';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminGeneralCatalog.tt
    $Self->{Translation}->{'General Catalog Management'} = 'Správa Hlavního Katalogu';
    $Self->{Translation}->{'Items in Class'} = 'Položky ve Třídě';
    $Self->{Translation}->{'Edit Item'} = 'Upravit položku';
    $Self->{Translation}->{'Add Class'} = 'Přidat Třídu';
    $Self->{Translation}->{'Add Item'} = 'Přidat položku';
    $Self->{Translation}->{'Add Catalog Item'} = 'Přidat položku Katalogu';
    $Self->{Translation}->{'Add Catalog Class'} = 'Přidat třídu Katalogu';
    $Self->{Translation}->{'Catalog Class'} = 'Třídy Katalogu';
    $Self->{Translation}->{'Edit Catalog Item'} = 'Upravit položku katalogu';

    # JS File: var/httpd/htdocs/js/ITSM.GeneralCatalog.js
    $Self->{Translation}->{'Warning incident state can not be set to invalid.'} = 'Varování: stav incidentu nemůže být nastaven na neplatný.';

    # SysConfig
    $Self->{Translation}->{'Comment 2'} = 'Komentář 2';
    $Self->{Translation}->{'Create and manage the General Catalog.'} = 'Vytvořit a spravovat hlavní katalog.';
    $Self->{Translation}->{'Define the general catalog comment 2.'} = 'Definuj komentář 2 hlavního katalogu.';
    $Self->{Translation}->{'Frontend module registration for the AdminGeneralCatalog configuration in the admin area.'} =
        'Registrační modul na frontendu pro konfiguraci hlavního katalogu v administrativní oblasti.';
    $Self->{Translation}->{'General Catalog'} = 'Hlavní Katalog';
    $Self->{Translation}->{'Parameters for the example comment 2 of the general catalog attributes.'} =
        'Příklad parametrů pro komentář 2 obecných atributů katalogu.';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        'Parametry skupiny pro příklad oprávnění obecných atributů katalogu.';
    $Self->{Translation}->{'Permission Group'} = 'Oprávnění skupiny';


    push @{ $Self->{JavaScriptStrings} //= [] }, (
    'Cancel',
    'Warning',
    'Warning incident state can not be set to invalid.',
    );

}

1;
