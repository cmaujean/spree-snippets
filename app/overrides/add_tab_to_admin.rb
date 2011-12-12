Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => "add_snippets_tab_to_admin",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:snippets) %>")