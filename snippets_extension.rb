class SnippetsExtension < Spree::Extension
  version "0.2"
  description "Admin configurable static content for CMS control over specific sections of a view."
  url "http://github.com/cmaujean/spree-snippets"
  
  # Developer will embed calls to render specific snippet slugs or ids
  # in any view. Admin will be able to control content via /admin/snippets.


  # Please use snippets/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate
    Admin::ConfigurationsController.class_eval do
      before_filter :add_snippets_links, :only => :index

      def add_snippets_links
        @extension_links << {
          :link => admin_pages_path,
          :link_text => t('ext_snippets_snippets'),
          :description => t('ext_snippets_snippets_desc')
        }
      end
    end
    
    Spree::BaseController.class_eval do
      helper SnippetHelper
    end

  end
end
