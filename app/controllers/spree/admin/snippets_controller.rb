class Spree::Admin::SnippetsController < Spree::Admin::ResourceController
  update.after :expire_cache
  create.after :expire_cache

  def create_draft
    @snippet = Spree::Snippet.create!
    redirect_to edit_admin_snippet_url(@snippet.id)
  end

  def expire_cache
    Rails.cache.delete('snippets')
  end
end
