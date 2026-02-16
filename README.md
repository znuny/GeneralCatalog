<div align="center">
  <a href="https://www.znuny.org">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://www.znuny.com/assets/znuny-logo.svg">
      <img alt="Znuny" src="https://www.znuny.com/assets/znuny-logo-black.svg" width="300">
    </picture>
  </a>

  ![Build status](https://badge.proxy.znuny.com/GeneralCatalog/rel-7_3)
</div>

General Catalog
===============

**Feature List**

This package provides the General Catalog for Znuny ITSM. It is the base for standardized, selectable value lists used across ITSM modules.

- **Catalog Classes**: Define catalog classes (e.g. for configuration item types, change categories, deployment states)
- **Catalog Items**: Manage items per class with name, validity and comments
- **Admin Interface**: Admin → General Catalog to create, edit and maintain classes and items
- **Preferences**: Optional item-level preferences for catalog entries (GeneralCatalogPreferences)
- **API**: Kernel::System::GeneralCatalog for use by ITSMCore, ITSMConfigurationManagement, ITSMChangeManagement and other packages

The General Catalog is required by other ITSM packages (e.g. ITSMConfigurationManagement, ITSMChangeManagement) to provide dropdown values and consistent taxonomies.

**Prerequisites**

- Znuny 7.3

**Installation**

Install via Admin interface → Package Manager. The package is part of the Znuny ITSM stack and can be installed from the Znuny repository or from a built .opm file. Install General Catalog before other ITSM packages that depend on it.

**Configuration**

Configuration is available in the System Configuration under GeneralCatalog. Use Admin → General Catalog to manage catalog classes and items. The action `AdminGeneralCatalog` is available for ACLs.

**Download**

Source code is available in the [GeneralCatalog repository](https://download.znuny.org/releases/itsm/latest/). For packaged releases, use the Znuny package repository or build from source.

**Commercial Support**

For this extension and for Znuny in general visit [www.znuny.com](https://www.znuny.com). Looking forward to hear from you!

Enjoy!

Your Znuny Team!

[www.znuny.com](https://www.znuny.com)
