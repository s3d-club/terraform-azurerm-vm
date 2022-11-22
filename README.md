# Azure Virtual Machine Module
This is a module that manages an Azure VM.

## Associated Documents
Please read our [LICENSE][lice], [CONTRIBUTING][cont], and [CHANGES][chge]
documents before working in this project and anytime they are updated.

## Overview
The focus of this module is to provide a simplified interface for the mangement
of Azure virtual machines.

This module does not seek to make the full range of Azure VM options available.
Our goal is to provide only the options that make sense and support a
configuration that handles typical usage.

This module is designed to fit into our ecosystem where our `name` module
manages the names and tags used for the image. The name of the image changes in
any case where the script content changes because we want to force the image to
be destroyed and redeployed in any case where the init scripting changes.

[chge]: ./CHANGES.md
[cont]: ./CONTRIBUTING.md
[lice]: ./LICENSE.md
