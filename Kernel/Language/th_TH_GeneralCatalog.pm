# --
# Copyright (C) 2012-2022 Znuny GmbH, https://znuny.com/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::th_TH_GeneralCatalog;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # TT Template: Kernel/Output/HTML/Templates/Standard/AAAGeneralCatalog.tt
    $Self->{Translation}->{'Functionality'} = 'ฟังก์ชั่นการทำงาน';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminGeneralCatalog.tt
    $Self->{Translation}->{'General Catalog Management'} = 'การจัดการแค็ตตาล็อกทั่วไป';
    $Self->{Translation}->{'Items in Class'} = '';
    $Self->{Translation}->{'Edit Item'} = '';
    $Self->{Translation}->{'Add Class'} = '';
    $Self->{Translation}->{'Add Item'} = '';
    $Self->{Translation}->{'Add Catalog Item'} = 'เพิ่มรายการแค็ตตาล็อก';
    $Self->{Translation}->{'Add Catalog Class'} = 'เพิ่มห้องแค็ตตาล็อก';
    $Self->{Translation}->{'Catalog Class'} = 'ห้องแค็ตตาล็อก';
    $Self->{Translation}->{'Edit Catalog Item'} = '';

    # JS File: var/httpd/htdocs/js/ITSM.GeneralCatalog.js
    $Self->{Translation}->{'Warning incident state can not be set to invalid.'} = '';

    # SysConfig
    $Self->{Translation}->{'Comment 2'} = '';
    $Self->{Translation}->{'Create and manage the General Catalog.'} = 'สร้างและจัดการแค็ตตาล็อกทั่วไป';
    $Self->{Translation}->{'Define the general catalog comment 2.'} = '';
    $Self->{Translation}->{'Frontend module registration for the AdminGeneralCatalog configuration in the admin area.'} =
        'การลงทะเบียนโมดูล Frontend สำหรับการกำหนดค่าของ AdminGeneralCatalog ในพื้นที่ของแอดมิน';
    $Self->{Translation}->{'General Catalog'} = 'แค็ตตาล็อกทั่วไป';
    $Self->{Translation}->{'Parameters for the example comment 2 of the general catalog attributes.'} =
        'พารามิเตอร์สำหรับตัวอย่างความคิดเห็นที่2 ของแค็ตตาล็อกแอตทริบิวต์ทั่วไป';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        'พารามิเตอร์สำหรับตัวอย่างกลุ่มที่ได้รับอนุญาตของแอตทริบิวต์แค็ตตาล็อกทั่วไป';
    $Self->{Translation}->{'Permission Group'} = '';


    push @{ $Self->{JavaScriptStrings} // [] }, (
    'Cancel',
    'Warning',
    'Warning incident state can not be set to invalid.',
    );

}

1;
