Deface::Override.new(:virtual_path => "spree/admin/shared/_menu",
                     :name => "static_snippet_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:snippets) %>")
