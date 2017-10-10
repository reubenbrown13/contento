# Managing Users

Users are the people that can access your website back-end and perform
administrative tasks, such as managing [posts](managing_posts.html),
[pages](managing_pages.html), changing [system settings](system_settings.html),
and many other.
You can find more information about users structure in the
[Contento.Accounts.User](Contento.Accounts.User.html) page.

## Properties

A user will have the following properties:

- `name` - Text that will be displayed as the user's name
- `email` - An email address used to authenticate and receive notifications
- `handle` - A username or nickname used to uniquely identify users
- `website` - User's website. Optional
- `location` - User's location. Optional
- `bio` - User's short biography. Optional
- `joined_at` - Datetime the user joined in (activated his account)
- `inserted_at` - Datetime the user was created
- `updated_at` - Datetime the user was last updated

## Listing users

To list all users in the system, whether they are or not published, you have
to visit "Users" page, located in [http://localhost:4000/c/users](http://localhost:4000/c/users).

This page can be accessed by clicking the "Users" link on the left sidebar,
under "Content" section.

## Creating a new user

To create a new user you will need to access the "New User" page, located in
[http://localhost:4000/c/users/new](http://localhost:4000/c/users/new).

This page can be accessed by clicking the "Users" link on the left
sidebar, under "Content" section. Next click the button "New User" on the
upper right corner.

The page will present a form that should be fulfilled and successfully submitted
to create a new user.

## Updating a user

To update an existing user you will have to access the user page, located in
[http://localhost:4000/c/users/:id](http://localhost:4000/c/users/1),
being `:id` the user's ID.

This page can be accessed by clicking the "Users" link on the left
sidebar, under "Content" section. Next select the user you want to edit
in the users list, by clicking it's row.

The page will present a form that should be fulfilled and successfully submitted
to update the user. Additional information such as the user's author and timestamps
will be shown on the right side of the page.

## Deleting a user

To delete an existing user you will have to access the user page, located in
[http://localhost:4000/c/users/:id](http://localhost:4000/c/users/1),
being `:id` the user's ID.

This page can be accessed by clicking the "Users" link on the left
sidebar, under "Content" section. Next select the user you want to edit
in the users list, by clicking it's row.

Apart from the form to [update a user](#updating-a-user), a button to delete
this user permanently will be available in the right side of the page, under
user's info. Click the button and confirm your decision to delete the user.
