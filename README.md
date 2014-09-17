# SuperbPages

Ruby gem that allows you to store your static pages and meta data in database.

## Requirements

SuperbPages requires Ruby version >= 1.9.3 and Ruby on Rails version >= 4.0.0.

## Installation

Add this line to your application's Gemfile:

    gem 'superb_pages'

And then execute:

    $ bundle

And run the generator:

    rails g superb_pages:install

## Generators

### Install

    rails g superb_pages:install

This one runs all SuperbPages generators. Use it if you didn't do anything related to the functionality of this gem.

### Migrations

    rails g superb_pages:migration

This generator copies migration that are required by the gem.

### Models

    rails g superb_pages:models

It generates `Page` and `MetaBlock` models:

    app/models/page.rb
    app/models/meta_block.rb

### Route

    rails g superb_pages:route

Run this migration to add route for `PagesController`.

## Usage

Static pages are ready straight away after installation. Just visit `localhost:3000/pages/your-page` and it will render its content (of course, if there is a page with `your-page` slug in your database). Just write your own admin interface and you are ready.

## Customization

### Models

Feel free to change `Pages` and `MetaBlock` models to add new or override the existing functionality.

### Controller

Create `app/controllers/pages_controller.rb` file and it will be used instead of default `PagesController`. Or write your own routes.

### View

Create `app/views/pages/show.html.erb` file and it will be used instead of default view.

### Uploader

`MetaBlock` model uses `SuperbPages::MetaFacebookImageUploader` to upload images for Facebook meta tags. You can use your own uploader instead. Just perform the following steps:

Create your own uploader `app/uploaders/custom_uploader.rb`

Add the following line to the `app/models/meta_block.rb`:

    mount_uploader :fb_image, CustomUploader