# --
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::it_GeneralCatalog;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # TT Template: Kernel/Output/HTML/Templates/Standard/AAAGeneralCatalog.tt
    $Self->{Translation}->{'Functionality'} = 'Funzionalità';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminGeneralCatalog.tt
    $Self->{Translation}->{'Add Catalog Item'} = 'Aggiungi Elemento al Catalogo';
    $Self->{Translation}->{'Add Catalog Class'} = 'Aggiungi Classe al Catalogo';
    $Self->{Translation}->{'Items in Class'} = 'Elementi nella Classe';
    $Self->{Translation}->{'Edit Item'} = 'Modifica Elemento';
    $Self->{Translation}->{'General Catalog Management'} = 'Gestione del Catalogo Generale';
    $Self->{Translation}->{'Add Class'} = 'Aggiungi Classe';
    $Self->{Translation}->{'Add Item'} = 'Aggiungi Elemento';
    $Self->{Translation}->{'Catalog Class'} = 'Classe di Catalogo';
    $Self->{Translation}->{'Edit Catalog Item'} = 'Modifica elemento di catalogo';

    # JS File: var/httpd/htdocs/js/ITSM.GeneralCatalog.js
    $Self->{Translation}->{'Warning incident state can not be set to invalid.'} = 'Lo stato dell\'incidente di avviso non può essere impostato su non valido.';

    # SysConfig
    $Self->{Translation}->{'Comment 2'} = 'Commento 2';
    $Self->{Translation}->{'Create and manage the General Catalog.'} = 'Crea e gestisci il Catalogo Generale.';
    $Self->{Translation}->{'Define the general catalog comment 2.'} = 'Definisci il commento 2 del catalogo generale.';
    $Self->{Translation}->{'Frontend module registration for the AdminGeneralCatalog configuration in the admin area.'} =
        'Modulo di registrazione per la configurazione di AdminGeneralCatalog nell\'area di admin.';
    $Self->{Translation}->{'General Catalog'} = 'Catalogo Generale';
    $Self->{Translation}->{'Parameters for the example comment 2 of the general catalog attributes.'} =
        'Parametri per il commento di esempio 2 degli attributi del catalogo generale.';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        'Parametri per i gruppi di permessi di esempio degli attributi del catalogo generale.';
    $Self->{Translation}->{'Permission Group'} = 'Gruppo di autorizzazioni';


    push @{ $Self->{JavaScriptStrings} // [] }, (
    'Cancel',
    'Warning',
    'Warning incident state can not be set to invalid.',
    );

}

1;
