# <img src="https://github.com/contentocms/contento/raw/master/assets/static/images/logo.png" style="display: inline-block;" height="40px" /> Contento

> ### Open Source CMS
> Built with all the power and love behind [Elixir](https://elixir-lang.org) and [Phoenix](https://phoenixframework.org).

![Contento Admin Screenshot](https://raw.githubusercontent.com/contentocms/contento/master/screenshot.png)

#### Disclaimer

This project is currently a WIP! We're aiming to finish `v0.0.1` out soon, which will mainly include basic features to follow forward with development of several improvements on those and next expected features.

Bear in mind that many things may (and most probably will) change before a stable version comes out!

If you have any suggestion, idea or just want to join discussion about this project, feel free to join `#contento` channel on [Elixir Slack](https://elixir-slackin.herokuapp.com/).

See [Contributing]() for more information on directly contributing to this project.

## Getting Started

1. Install the Contento archive, if you haven't already done so:

```
$ mix archive.install https://github.com/contentocms/contento_new/raw/master/releases/contento.new.ez
```

2. Create your new website with:

```
$ mix contento.new [directory]
```

This command will do a few things for you, including: cloning this repo to given directory, fetch and install dependencies, compile back-office assets, generate configuration files with defaults, create database and run migrations, install default theme [Simplo](https://github.com/contentocms/simplo) and setup Contento with defaults.

After that your website is ready! You can access it on `http://localhost:4000` or `http://localhost:4000/login` to access back-office.

The default user credentials are:

- Email: **contento@example.org**
- Password: **contento**

**NOTE:** Check [ROADMAP.md](https://github.com/contentocms/contento/blob/master/ROADMAP.md) for a list of current features and what's expected to come next.

## Documentation

Documentation will be available online in our website and on Hex Docs as soon as possible. Until that time arrives, you may generate documentation locally with `mix docs`.

## Contributing

Contributions are very much appreciated and welcome! A guide on contributing will be available soon. In the meanwhile, follow the features and issues on the [Issue Tracker]() and feel free to push your PRs for evaluation. It's better that before you even start working on some feature or bug fix to join `#contento` channel for previous discussion. Until a guide is out, you may refer to [Phoenix's Contributor Code of Conduct](https://github.com/phoenixframework/phoenix/blob/master/CODE_OF_CONDUCT.md) for general guidelines on how to contribute, as we'll eventually follow their approach in this project one way or another.

## License

This project is licensed under the [MIT license](https://github.com/contentocms/contento/blob/master/LICENSE.md).
