# --
# Copyright (C) 2001-2019 OTRS AG, https://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::Language::nb_NO_GeneralCatalog;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AAAGeneralCatalog
    $Self->{Translation}->{'Functionality'} = 'Funksjonalitet';

    # Template: AdminGeneralCatalog
    $Self->{Translation}->{'General Catalog Management'} = 'Administrasjon av Generell Katalog';
    $Self->{Translation}->{'Add Catalog Item'} = 'Legg til katalogobjekt';
    $Self->{Translation}->{'Add Catalog Class'} = 'Legg til katalog-klasse';
    $Self->{Translation}->{'Catalog Class'} = 'Katalog-klasse';
    $Self->{Translation}->{'Edit Catalog Item'} = '';

    # SysConfig
    $Self->{Translation}->{'Admin.'} = '';
    $Self->{Translation}->{'Create and manage the General Catalog.'} = 'Opprett og administrér den generelle katalogen';
    $Self->{Translation}->{'Frontend module registration for the AdminGeneralCatalog configuration in the admin area.'} =
        'Forsidemodul-registrering for AdminGeneralCatalog-oppsett i admin-delen.';
    $Self->{Translation}->{'General Catalog'} = 'Generell Katalog';
    $Self->{Translation}->{'Parameters for the example comment 2 of the general catalog attributes.'} =
        'Parametre for eksempelkommentar 2 i attributtene for generell katalog';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        'Parametere for tilgangsgruppe-eksempel i attributtene for generell katalog.';

}

1;
