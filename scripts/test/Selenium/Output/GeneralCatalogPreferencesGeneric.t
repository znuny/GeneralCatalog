# --
# Copyright (C) 2001-2021 OTRS AG, https://otrs.com/
# Copyright (C) 2021 Znuny GmbH, https://znuny.org/
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see https://www.gnu.org/licenses/gpl-3.0.txt.
# --

use strict;
use warnings;
use utf8;

use vars (qw($Self));

# get selenium object
my $Selenium = $Kernel::OM->Get('Kernel::System::UnitTest::Selenium');

$Selenium->RunTest(
    sub {

        # get helper object
        my $Helper = $Kernel::OM->Get('Kernel::System::UnitTest::Helper');

        # get sysconfig object
        my $SysConfigObject = $Kernel::OM->Get('Kernel::System::SysConfig');

        $Helper->ConfigSettingChange(
            Valid => 0,
            Key   => 'GeneralCatalogPreferences###Comment2',
            Value => {
                Module  => 'Kernel::Output::HTML::GeneralCatalogPreferences::Generic',
                Label   => 'Comment2',
                Desc    => 'Define the general catalog comment 2.',
                Block   => 'TextArea',
                Cols    => '50',
                Rows    => '5',
                PrefKey => 'Comment2',
            },
        );

        $Helper->ConfigSettingChange(
            Valid => 0,
            Key   => 'GeneralCatalogPreferences###Permissions',
            Value => {
                Module  => 'Kernel::Output::HTML::GeneralCatalogPreferences::Generic',
                Label   => 'Permissions',
                Desc    => 'Define the group with permissions.',
                Block   => 'Permission',
                Class   => 'ITSM::ConfigItem::Class',
                PrefKey => 'Permission',
            },
        );

        # create and log in test user
        my $TestUserLogin = $Helper->TestUserCreate(
            Groups => ['admin'],
        ) || die "Did not get test user";

        $Selenium->Login(
            Type     => 'Agent',
            User     => $TestUserLogin,
            Password => $TestUserLogin,
        );

        # get script alias
        my $ScriptAlias = $Kernel::OM->Get('Kernel::Config')->Get('ScriptAlias');

        # ---------------------------------------------------- #
        # Test case: Comment2                                  #
        # ---------------------------------------------------- #

        # navigate to AdminGeneralCatalog screen
        $Selenium->VerifiedGet("${ScriptAlias}index.pl?Action=AdminGeneralCatalog");

        # click "Add Catalog Class"
        $Selenium->find_element("//button[\@value='Add'][\@type='submit']")->VerifiedClick();

        # verify that general catalog preference Comment2 is not present while invalid
        $Self->True(
            index( $Selenium->get_page_source(), "#Comment2" ) == -1,
            "#Comment2 is not enabled!",
        );

        # get general catalog preference Comment2 default sysconfig
        my %PreferenceComment2Config = $SysConfigObject->SettingGet(
            Name    => 'GeneralCatalogPreferences###Comment2',
            Default => 1,
        );

        # set general catalog preference Comment2 to valid
        my %PreferenceComment2ConfigUpdate = map { $_->{Key} => $_->{Content} }
            grep { defined $_->{Key} }
            @{ $PreferenceComment2Config{XMLContentParsed}->{Value}->[0]->{Hash}->[0]->{Item} };

        #@{ $PreferenceComment2Config{Setting}->[1]->{Hash}->[1]->{Item} };

        $Helper->ConfigSettingChange(
            Valid => 1,
            Key   => 'GeneralCatalogPreferences###Comment2',
            Value => \%PreferenceComment2ConfigUpdate,
        );

        # refresh screen for sysconfig update to take effect
        $Selenium->VerifiedRefresh();

        # verify that general catalog preference Comment2 is present while valid
        my $Success = $Selenium->find_element( "#Comment2", 'css' )->is_enabled();
        $Self->True(
            $Success,
            "#Comment2 is enabled!",
        );

        # create real test catalog class
        my $CatalogClassDsc  = "CatalogClassDsc" . $Helper->GetRandomID();
        my $CatalogClassName = "CatalogClassName" . $Helper->GetRandomID();
        $Selenium->find_element( "#ClassDsc", 'css' )->send_keys($CatalogClassDsc);
        $Selenium->find_element( "#Name",     'css' )->send_keys($CatalogClassName);
        $Selenium->find_element( "#Comment",  'css' )->send_keys("Selenium catalog class");
        $Selenium->execute_script("\$('#ValidID').val('1').trigger('redraw.InputField').trigger('change');");
        $Selenium->find_element("//button[\@value='Submit'][\@type='submit']")->VerifiedClick();

        # click "Add Catalog Item"
        $Selenium->find_element("//button[\@value='Add'][\@type='submit']")->VerifiedClick();

        # create real test catalog item
        my $CatalogClassItem = "CatalogClassItem" . $Helper->GetRandomID();
        $Selenium->find_element( "#Name",    'css' )->send_keys($CatalogClassItem);
        $Selenium->find_element( "#Comment", 'css' )->send_keys("Selenium catalog item");
        $Selenium->execute_script("\$('#ValidID').val('1').trigger('redraw.InputField').trigger('change');");

        # set included queue attribute Comment2
        $Selenium->find_element( "#Comment2", 'css' )->send_keys('GeneralCatalogPreferencesGeneric Comment2');
        $Selenium->find_element("//button[\@value='Submit'][\@type='submit']")->VerifiedClick();

        # get test catalog items IDs
        my @CatalogItemIDs;
        for my $CatalogItems ( $CatalogClassName, $CatalogClassItem ) {
            my $CatalogClassItemData = $Kernel::OM->Get('Kernel::System::GeneralCatalog')->ItemGet(
                Class => $CatalogClassDsc,
                Name  => $CatalogItems,
            );
            my $CatalogItemID = $CatalogClassItemData->{ItemID};
            push @CatalogItemIDs, $CatalogItemID;
        }

        # check new test catalog item Comment2 value
        $Selenium->find_element(
            "//a[contains(\@href, \'Action=AdminGeneralCatalog;Subaction=ItemEdit;ItemID=$CatalogItemIDs[1]' )]"
        )->VerifiedClick();

        $Self->Is(
            $Selenium->find_element( '#Comment2', 'css' )->get_value(),
            'GeneralCatalogPreferencesGeneric Comment2',
            "#Comment2 stored value",
        );

        # update Comment2
        my $UpdateComment2 = "Updated comment for GeneralCatalogPreferencesGeneric Comment2";
        $Selenium->find_element( "#Comment2", 'css' )->clear();
        $Selenium->find_element( "#Comment2", 'css' )->send_keys($UpdateComment2);
        $Selenium->find_element("//button[\@value='Submit'][\@type='submit']")->VerifiedClick();

        # check updated Comment2 value
        $Selenium->find_element( $CatalogClassItem, 'link_text' )->VerifiedClick();
        $Self->Is(
            $Selenium->find_element( '#Comment2', 'css' )->get_value(),
            $UpdateComment2,
            "#Comment2 updated value",
        );

        # ---------------------------------------------------- #
        # Test case: Permissions                               #
        # ---------------------------------------------------- #

        # navigate to AdminGeneralCatalog screen
        $Selenium->VerifiedGet("${ScriptAlias}index.pl?Action=AdminGeneralCatalog");

        # click on test CatalogClass
        $Selenium->find_element( $CatalogClassDsc, 'link_text' )->VerifiedClick();

        # click "Add Catalog Item"
        $Selenium->find_element("//button[\@value='Add'][\@type='submit']")->VerifiedClick();

        # verify that general catalog preference Permissions is not present while invalid
        $Self->True(
            index( $Selenium->get_page_source(), "#Permission_Search" ) == -1,
            "#Permissions is not enabled!",
        );

        # get general catalog preference Permission default sysconfig
        my %PreferencePermissionsConfig = $SysConfigObject->SettingGet(
            Name    => 'GeneralCatalogPreferences###Permissions',
            Default => 1,
        );

        my $PreferencePermissionsEffectiveConfig = $SysConfigObject->SettingEffectiveValueGet(
            Value => $PreferencePermissionsConfig{XMLContentParsed}->{Value},
        );

        # set Class for GeneralCatalogPreferences###Permissions as test CatalogClass
        $PreferencePermissionsEffectiveConfig->{Class} = $CatalogClassDsc;

        $Helper->ConfigSettingChange(
            Valid => 1,
            Key   => 'GeneralCatalogPreferences###Permissions',
            Value => $PreferencePermissionsEffectiveConfig,
        );

        # refresh screen for sysconfig update to take effect
        $Selenium->VerifiedRefresh();

        # verify that general catalog preference Permissions is present while valid
        $Success = $Selenium->find_element( "#Permission_Search", 'css' )->is_enabled();
        $Self->True(
            $Success,
            "#Permissions is enabled!",
        );

        # get DB object
        my $DBObject = $Kernel::OM->Get('Kernel::System::DB');

        # delete created test catalog class
        for my $CatalogItem (@CatalogItemIDs) {

            $Success = $DBObject->Do(
                SQL => "DELETE FROM general_catalog_preferences WHERE general_catalog_id = $CatalogItem",
            );
            $Self->True(
                $Success,
                "CatalogItemID $CatalogItem preference - deleted",
            );
            $Success = $DBObject->Do(
                SQL => "DELETE FROM general_catalog WHERE id = $CatalogItem",
            );
            $Self->True(
                $Success,
                "CatalogItemID $CatalogItem - deleted",
            );
        }

        # clean up cache
        $Kernel::OM->Get('Kernel::System::Cache')->CleanUp( Type => 'GeneralCatalog' );
    }
);

1;
