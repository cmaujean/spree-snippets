module SpreeSnippets
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Configures your Rails application for use with spree_product_assembly"

      def copy_migrations
        directory "db"
      end

      # No public yet
      def copy_public
        directory "public"
      end

    end
  end
end