# --
# Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

package Kernel::Language::id_GeneralCatalog;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # Template: AAAGeneralCatalog
    $Self->{Translation}->{'Functionality'} = 'Fungsionalitas';

    # Template: AdminGeneralCatalog
    $Self->{Translation}->{'General Catalog Management'} = 'Manajemen Katalog Umum';
    $Self->{Translation}->{'Add Catalog Item'} = 'Tambah Item Katalog';
    $Self->{Translation}->{'Add Catalog Class'} = 'Tambah Kelas Katalog';
    $Self->{Translation}->{'Catalog Class'} = 'Kelas Katalog';
    $Self->{Translation}->{'Edit Catalog Item'} = '';

    # SysConfig
    $Self->{Translation}->{'Admin.'} = 'Admin.';
    $Self->{Translation}->{'Create and manage the General Catalog.'} = 'Buat dan kelola Katalog Umum';
    $Self->{Translation}->{'Frontend module registration for the AdminGeneralCatalog configuration in the admin area.'} =
        'Registrasi modul frontend untuk pengaturan AdminKatalogUmum di area admin.';
    $Self->{Translation}->{'General Catalog'} = 'Katalog Umum';
    $Self->{Translation}->{'Parameters for the example comment 2 of the general catalog attributes.'} =
        'Parameter untuk 2 contoh komentar dari atribut katalog umum.';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        'Parameter untuk grup conoth perizinan dari atribut katalog umum.';

}

1;
