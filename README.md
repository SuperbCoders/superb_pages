# SuperbPages

Ruby gem that allows you to store your static pages and meta data in database.

## Requirements

SuperbPages requires Ruby version >= 1.9.3 and Ruby on Rails version >= 4.0.0.

## Installation

Add this line to your application's Gemfile:

    gem 'superb_pages'

And then execute:

    $ bundle

Then you have to generate database migrations:

    rails g superb_pages:migration

## Generators

### Migrations

You must run this generator to make SuperbPages work.

    rails g superb_pages:migration

### Models

Run this migration if you want to customize default models :

    rails g superb_pages:models

It generates 2 files:

    app/models/page.rb
    app/models/meta_block.rb

Now you should use `Page` and `MetaBlock` instead of `SuperbPages::Page` and `SuperbPages::MetaBlock` everywhere you use them.

### Route

Run this migration to add route for `PagesController`:

    rails g superb_pages:route

## Usage

Generally static pages are ready after installation and route generation. Just visit `localhost:3000/pages/your-page` and it will render its content (of course, if there is a page with `your-page` slug in your database). Just write your own admin interface and you are ready.

## Customization

### Models

As mentioned above run `superb_pages:models` generator and do anything you want with `Pages` and `MetaBlock` models.

### Controller

Create `app/controllers/pages_controller.rb` file and it will be used instead of default `PagesController`. Or write your own routes.

### View

Create `app/views/pages/show.html.erb` file and it will be used instead of default view.

### Uploader

`SuperbPages::MetaBlock` model uses `MetaFacebookImageUploader` to upload images for Facebook meta tags. You can use your own uploader instead. Just perform the following steps:

Generate SuperbPages models if you have not generated them yet:

    rails g superb_pages:models

Create your own uploader `app/uploaders/custom_uploader.rb`

Add the following line to your `app/models/meta_block.rb`

    mount_uploader :fb_image, CustomUploader