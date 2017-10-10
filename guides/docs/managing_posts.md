# Managing Posts

Posts are any piece of content published on the website, typically called blog posts.
You can find more information about posts structure in the
[Contento.Content.Post](Contento.Content.Post.html) page.

## Properties

A post will have the following properties:

- `title` - Post title
- `content` - Post content (can use [Markdown](https://daringfireball.net/projects/markdown/))
- `published` - Whether or not the post should be published or saved as a draft
- `slug` - Path where your post will be available. A post with a
           slug `hello-world` will be available at the url
           [http://localhost:4000/hello-world](http://localhost:4000/hello-world). Although the user is free to
           use whatever slug he wants, one is generated based on the `title` property
           if the `slug` is left empty
- `author` - User that created a post
- `published_at` - Datetime the post was published, empty if post not isn't published
- `inserted_at` - Datetime the post was created
- `updated_at` - Datetime the post was last updated

## Listing posts

To list all posts in the system, whether they are or not published, you have
to visit "Posts" page, located in [http://localhost:4000/c/posts](http://localhost:4000/c/posts).

This page can be accessed by clicking the "Posts" link on the left sidebar,
under "Content" section.

## Creating a new post

To create a new post you will need to access the "New Post" page, located in
[http://localhost:4000/c/posts/new](http://localhost:4000/c/posts/new).

This page can be accessed by clicking the "Posts" link on the left
sidebar, under "Content" section. Next click the button "New Post" on the
upper right corner.

The page will present a form that should be fulfilled and successfully submitted
to create a new post.

## Updating a post

To update an existing post you will have to access the post page, located in
[http://localhost:4000/c/posts/:id](http://localhost:4000/c/posts/1),
being `:id` the post's ID.

This page can be accessed by clicking the "Posts" link on the left
sidebar, under "Content" section. Next select the post you want to edit
in the posts list, by clicking it's row.

The page will present a form that should be fulfilled and successfully submitted
to update the post. Additional information such as the post's author and timestamps
will be shown on the right side of the page.

## Deleting a post

To delete an existing post you will have to access the post page, located in
[http://localhost:4000/c/posts/:id](http://localhost:4000/c/posts/1),
being `:id` the post's ID.

This page can be accessed by clicking the "Posts" link on the left
sidebar, under "Content" section. Next select the post you want to edit
in the posts list, by clicking it's row.

Apart from the form to [update a post](#updating-a-post), a button to delete
this post permanently will be available in the right side of the page, under
post's info. Click the button and confirm your decision to delete the post.
