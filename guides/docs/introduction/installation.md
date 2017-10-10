# Installation

To install Contento into your system you will need a few things to prepare your environment.

## Requirements

You will need the following software installed in your system to install and run Contento:

- Elixir (check [Installing Elixir](https://elixir-lang.org/install.html) page)
- Erlang 18 or later (see Elixir installation page)
- Node (check [Download](https://nodejs.org/en/download/) page)

## Install

After having all the [base requirements](#requirements) fulfilled, you may install Contento archive with:

```
$ mix archive.install https://github.com/contentocms/contento_new/blob/master/releases/contento.new.ez
```

## Uninstall

If you want to remove Contento from your system, run the following command:

```
$ mix archive.uninstall contento.new
```

Alternatively you may also remove the directory `contento.new` from Mix archives directory. That directory usually is located under `~/.mix/archives`.
