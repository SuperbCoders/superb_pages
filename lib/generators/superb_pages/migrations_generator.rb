require 'rails/generators/active_record'

module SuperbPages
  module Generators
    # Generator that creates migrations from templates
    class MigrationsGenerator < ActiveRecord::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      argument :name, type: :string, default: 'create_pages'

      def copy_migrations
        migration_template 'migrations/create_meta_blocks.rb', 'db/migrate/create_meta_blocks.rb'
        migration_template 'migrations/create_pages.rb', 'db/migrate/create_pages.rb'
      end

    end
  end
end
