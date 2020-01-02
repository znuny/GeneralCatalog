# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::Language::tr_GeneralCatalog;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AAAGeneralCatalog
    $Self->{Translation}->{'Functionality'} = 'İşlevsellik';

    # Template: AdminGeneralCatalog
    $Self->{Translation}->{'General Catalog Management'} = 'Genel Katalog Yönetimi';
    $Self->{Translation}->{'Add Catalog Item'} = 'Katalog Ögesi Ekleyin';
    $Self->{Translation}->{'Add Catalog Class'} = 'Katalog Sınıfı Ekleyin';
    $Self->{Translation}->{'Catalog Class'} = 'Katalog Sınıfı';
    $Self->{Translation}->{'Edit Catalog Item'} = '';

    # SysConfig
    $Self->{Translation}->{'Admin.'} = '';
    $Self->{Translation}->{'Create and manage the General Catalog.'} = 'Genel Katalog yönetimi.';
    $Self->{Translation}->{'Frontend module registration for the AdminGeneralCatalog configuration in the admin area.'} =
        'Yönetim bölümüneki AdminGeneralCatalog ayarları için önyüz modül kaydı.';
    $Self->{Translation}->{'General Catalog'} = 'Genel Katalog';
    $Self->{Translation}->{'Parameters for the example comment 2 of the general catalog attributes.'} =
        'Genel katalog özniteliklerinin ikinci örnek yorumunun parametreleri.';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        'Genel katalog özniteliklerinin örnek izin gruplarının parametreleri.';

}

1;
