Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "static_snippet_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:snippets) %>")