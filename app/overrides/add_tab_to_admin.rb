Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => "add_snippets_tab_to_admin",
                     :insert_after => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text => "<%= tab(:snippets) %>",
                     :disabled => false)