class SnippetsExtension < Spree::Extension
  version "0.2"
  description "Admin configurable static content for CMS control over specific sections of a view."
  url "http://github.com/cmaujean/spree-snippets"
  
  # Developer will embed calls to render specific snippet slugs or ids
  # in any view. Admin will control content via /admin/snippets.


  # Please use snippets/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate

    Admin::BaseController.class_eval do 
      before_filter :add_snippets_tab
      
      def add_snippets_tab
        @extension_tabs << [ :snippets ]
      end
    end
    
    Spree::BaseController.class_eval do
      helper SnippetHelper
    end

  end
end
