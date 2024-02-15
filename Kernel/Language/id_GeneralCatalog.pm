# --
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::id_GeneralCatalog;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # TT Template: Kernel/Output/HTML/Templates/Standard/AAAGeneralCatalog.tt
    $Self->{Translation}->{'Functionality'} = 'Fungsionalitas';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminGeneralCatalog.tt
    $Self->{Translation}->{'Add Catalog Item'} = 'Tambah Item Katalog';
    $Self->{Translation}->{'Add Catalog Class'} = 'Tambah Kelas Katalog';
    $Self->{Translation}->{'Items in Class'} = '';
    $Self->{Translation}->{'Edit Item'} = '';
    $Self->{Translation}->{'General Catalog Management'} = 'Manajemen Katalog Umum';
    $Self->{Translation}->{'Add Class'} = '';
    $Self->{Translation}->{'Add Item'} = '';
    $Self->{Translation}->{'Catalog Class'} = 'Kelas Katalog';
    $Self->{Translation}->{'Edit Catalog Item'} = '';

    # JS File: var/httpd/htdocs/js/ITSM.GeneralCatalog.js
    $Self->{Translation}->{'Warning incident state can not be set to invalid.'} = '';

    # SysConfig
    $Self->{Translation}->{'Comment 2'} = '';
    $Self->{Translation}->{'Create and manage the General Catalog.'} = 'Buat dan kelola Katalog Umum';
    $Self->{Translation}->{'Define the general catalog comment 2.'} = '';
    $Self->{Translation}->{'Frontend module registration for the AdminGeneralCatalog configuration in the admin area.'} =
        'Registrasi modul frontend untuk pengaturan AdminKatalogUmum di area admin.';
    $Self->{Translation}->{'General Catalog'} = 'Katalog Umum';
    $Self->{Translation}->{'Parameters for the example comment 2 of the general catalog attributes.'} =
        'Parameter untuk 2 contoh komentar dari atribut katalog umum.';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        'Parameter untuk grup conoth perizinan dari atribut katalog umum.';
    $Self->{Translation}->{'Permission Group'} = '';


    push @{ $Self->{JavaScriptStrings} // [] }, (
    'Cancel',
    'Warning',
    'Warning incident state can not be set to invalid.',
    );

}

1;
