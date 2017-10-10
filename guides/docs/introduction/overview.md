# Overview

> Contento is an open source Content Management System built with Elixir and the Phoenix Framework.

The purpose of this page is to present a brief overview of Contento and supply some directions to start using or contributing to it.

## Contento

Contento is a CMS that uses the great Phoenix Framework underneath to potentiate a powerful platform for content-based websites.

It ships with several components that make it an easy and ready-to-use platform for customized solutions. Here they are:

- [Base](first_things_first.html)
  - authentication using [Guardian](https://github.com/ueberauth/guardian) and [JWT tokens](https://jwt.io)
  - users management

- [Content](content.html)
  - posts
  - pages

- [Appearance](appearance.html)
  - multiple themes support
  - change theme at runtime
  - easily install themes: `mix contento.install.theme [repo]`

- [System](system.html)
  - maintenance mode

Other features are planned for the near future and include (but are not limited to):

- search
- RSS feed
- archives
- SEO support
- media management
- user roles

Go ahead to [Installation section](installation.html) to learn how to easily install and run a website powered by Contento!

### Final Note
If you find an issue with the guides or would like to help improve them, please checkout the [Contento Guides](https://github.com/contentocms/contento/tree/master/guides/) on Github. Issues and Pull Requests are happily accepted!
