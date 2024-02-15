# --
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

package Kernel::Language::fa_GeneralCatalog;

use strict;
use warnings;
use utf8;

sub Data {
    my $Self = shift;

    # TT Template: Kernel/Output/HTML/Templates/Standard/AAAGeneralCatalog.tt
    $Self->{Translation}->{'Functionality'} = 'کارکردی';

    # TT Template: Kernel/Output/HTML/Templates/Standard/AdminGeneralCatalog.tt
    $Self->{Translation}->{'Add Catalog Item'} = 'اضافه کردن یک قلم فهرست';
    $Self->{Translation}->{'Add Catalog Class'} = 'اضافه کردن کلاس فهرستی';
    $Self->{Translation}->{'Items in Class'} = '';
    $Self->{Translation}->{'Edit Item'} = '';
    $Self->{Translation}->{'General Catalog Management'} = 'مدیریت فهرست عمومی';
    $Self->{Translation}->{'Add Class'} = '';
    $Self->{Translation}->{'Add Item'} = '';
    $Self->{Translation}->{'Catalog Class'} = 'فهرست کلاسی';
    $Self->{Translation}->{'Edit Catalog Item'} = '';

    # JS File: var/httpd/htdocs/js/ITSM.GeneralCatalog.js
    $Self->{Translation}->{'Warning incident state can not be set to invalid.'} = '';

    # SysConfig
    $Self->{Translation}->{'Comment 2'} = '';
    $Self->{Translation}->{'Create and manage the General Catalog.'} = 'ساخت و مدیریت فهرست عمومی';
    $Self->{Translation}->{'Define the general catalog comment 2.'} = '';
    $Self->{Translation}->{'Frontend module registration for the AdminGeneralCatalog configuration in the admin area.'} =
        'ثبت ماژول برای پیکربندی فهرست عمومی در بخش مدیریت';
    $Self->{Translation}->{'General Catalog'} = 'فهرست عمومی';
    $Self->{Translation}->{'Parameters for the example comment 2 of the general catalog attributes.'} =
        'پارامترهایی برای توضیح نمونه ۲ مربوط به ویژگی‌های فهرست عمومی';
    $Self->{Translation}->{'Parameters for the example permission groups of the general catalog attributes.'} =
        'پارامترهایی برای گروه‌های دسترسی نمونه مربوط به ویژگی‌های فهرست عمومی';
    $Self->{Translation}->{'Permission Group'} = '';


    push @{ $Self->{JavaScriptStrings} // [] }, (
    'Cancel',
    'Warning',
    'Warning incident state can not be set to invalid.',
    );

}

1;
