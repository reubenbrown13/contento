# First Things First

This page will guide you through creating a new Contento project.
Before we get started, please make sure to fulfill basic requirements
and [Install Contento](installation.html) on your system.

## Creating a new project

It's easy to create a new Contento project, just run the following command
in the directory you want your clean installation to live:

```
$ mix contento.new awesome_website
```

That command will do quite a few things for you! It will:

- clone [Contento repo](https://github.com/contentocms/contento) to given location (`awesome_website` in this example);
- fetch and install all necessary dependencies;
- bundle back-office assets;
- generate configuration files with default values;
- create database and run migrations;
- install default theme: [Simplo](https://github.com/contentocms/simplo);
- setup system settings with defaults.

That's all you get with a single command: an up and running clean
Contento installation for your next awesome project.

### First login

When you start a Contento project like we did above, a default user
is created for you.

You can access the back-office by going to [http://localhost:4000/login](http://localhost:4000/login)
and providing the following credentials:

- **Username**: *contento@example.org*
- **Password**: *contento*

## What's next?

Now that your new project is all setup and ready, you can learn how to
[create a new post](create_post.html), [create a new page](create_page.html),
[managing users](managing_users.html) or [customizing it's appearance](customizing.html).
