module SuperbPages
  module Generators
    # Generator that adds route
    class RouteGenerator < ::Rails::Generators::Base
      def add_route
        route 'resources :pages, only: :show'
      end
    end
  end
end
