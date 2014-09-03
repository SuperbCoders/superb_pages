module SuperbPages
  module Generators
    # Generator that creates models from templates
    class ModelsGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def copy_models
        template 'models/page.rb', 'app/models/page.rb'
        template 'models/meta_block.rb', 'app/models/meta_block.rb'
      end

    end
  end
end
