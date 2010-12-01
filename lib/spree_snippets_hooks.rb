class SpreeSnippetsHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_tabs do
    %(<%= tab(:snippets) %>)
  end
end
