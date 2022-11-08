# --
# Copyright (C) 2021-2022 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::Language::sr_Cyrl_GeneralCatalog;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # TT Template: Kernel/Output/HTML/Templates/Standard/AAAGeneralCatalog.tt
    $Self->{Translation}->{'Functionality'} = 'Функционалност';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminGeneralCatalog.tt
    $Self->{Translation}->{'General Catalog Management'} = 'Управљање Општим каталогом';
    $Self->{Translation}->{'Items in Class'} = 'Ставке у класи';
    $Self->{Translation}->{'Edit Item'} = 'Уреди ставку';
    $Self->{Translation}->{'Add Class'} = 'Додај класу';
    $Self->{Translation}->{'Add Item'} = 'Додај ставку';
    $Self->{Translation}->{'Add Catalog Item'} = 'Додавање ставке у каталог';
    $Self->{Translation}->{'Add Catalog Class'} = 'Додавање класе у каталог';
    $Self->{Translation}->{'Catalog Class'} = 'Класа каталога';
    $Self->{Translation}->{'Edit Catalog Item'} = 'Уреди ставку каталога';

    # JS File: var/httpd/htdocs/js/ITSM.GeneralCatalog.js
    $Self->{Translation}->{'Warning incident state can not be set to invalid.'} = 'Статус инцидента упозорења не може се поставити на неважећи.';

    # SysConfig
    $Self->{Translation}->{'Comment 2'} = 'Коментар 2';
    $Self->{Translation}->{'Create and manage the General Catalog.'} = 'Креирање и управљање општим каталогом.';
    $Self->{Translation}->{'Define the general catalog comment 2.'} = 'Дефинише коментар 2 у општем каталогу.';
    $Self->{Translation}->{'Frontend module registration for the AdminGeneralCatalog configuration in the admin area.'} =
        'Регистрација приступног модула за AdminGeneralCatalog у интерфејсу администратора.';
    $Self->{Translation}->{'General Catalog'} = 'Општи каталог';
    $Self->{Translation}->{'Parameters for the example comment 2 of the general catalog attributes.'} =
        'Параметри за пример коментара 2 атрибута општег каталога.';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        'Параметри за пример групе за дозволе атрибута општег каталога.';
    $Self->{Translation}->{'Permission Group'} = 'Група приступа';


    push @{ $Self->{JavaScriptStrings} // [] }, (
    'Cancel',
    'Warning',
    'Warning incident state can not be set to invalid.',
    );

}

1;
