module SuperbPages
  module Generators
    # Generator that installs all the parts of gem
    class InstallGenerator < ::Rails::Generators::Base
      

      def generate_migrations
        generate 'superb_pages:migrations'
      end

      def generate_models
        generate 'superb_pages:models'
      end

      def generate_route
        generate 'superb_pages:route'
      end

    end
  end
end
