# Managing Pages

Pages, unlike posts, are usually meant to contain more institutional info,
contact addresses or similar static content. Pages allow a greater customization
than posts, because they allow the usage of special `templates`, given that
the theme you are currently using provides them.
You can find more information about pages structure in the
[Contento.Content.Page](Contento.Content.Page.html) page.

## Properties

A page will have the following properties:

- `title` - Page title. Required
- `content` - Page content (can use [Markdown](https://daringfireball.net/projects/markdown/))
- `published` - Whether or not the page should be published or saved as a draft
- `slug` - Path where your page will be available. A page with a
           slug `hello-world` will be available at the url
           [http://localhost:4000/about](http://localhost:4000/about). Although the user is free to
           use whatever slug he wants, one is generated based on the `title` property
           if the `slug` is left empty
- `template` - A template, provided by current theme, to customize the page
- `author` - User that created a page
- `published_at` - Datetime the page was published, empty if page not isn't published
- `inserted_at` - Datetime the page was created
- `updated_at` - Datetime the page was last updated

## Listing pages

To list all pages in the system, whether they are or not published, you have
to visit "Pages" page, located in [http://localhost:4000/c/pages](http://localhost:4000/c/pages).

This page can be accessed by clicking the "Pages" link on the left sidebar,
under "Content" section.

## Creating a new page

To create a new page you will need to access the "New Page" page, located in
[http://localhost:4000/c/pages/new](http://localhost:4000/c/pages/new).

This page can be accessed by clicking the "Pages" link on the left
sidebar, under "Content" section. Next click the button "New Page" on the
upper right corner.

The page will present a form that should be fulfilled and successfully submitted
to create a new page.

## Updating a page

To update an existing page you will have to access the page page, located in
[http://localhost:4000/c/pages/:id](http://localhost:4000/c/pages/1),
being `:id` the page's ID.

This page can be accessed by clicking the "Pages" link on the left
sidebar, under "Content" section. Next select the page you want to edit
in the pages list, by clicking it's row.

The page will present a form that should be fulfilled and successfully submitted
to update the page. Additional information such as the page's author and timestamps
will be shown on the right side of the page.

## Deleting a page

To delete an existing page you will have to access the page page, located in
[http://localhost:4000/c/pages/:id](http://localhost:4000/c/pages/1),
being `:id` the page's ID.

This page can be accessed by clicking the "Pages" link on the left
sidebar, under "Content" section. Next select the page you want to edit
in the pages list, by clicking it's row.

Apart from the form to [update a page](#updating-a-page), a button to delete
this page permanently will be available in the right side of the page, under
page's info. Click the button and confirm your decision to delete the page.
