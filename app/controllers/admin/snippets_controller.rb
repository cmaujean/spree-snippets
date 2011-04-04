class Admin::SnippetsController < Admin::BaseController
  resource_controller

  def create_draft
    @snippet = Snippet.create!
    redirect_to edit_admin_snippet_url(@snippet.id)
  end

  update.response do |wants|
    wants.html { redirect_to collection_url }
  end

  update.after do
    Rails.cache.delete('snippets')
  end

  create.response do |wants|
    wants.html { redirect_to collection_url }
  end

  create.after do
    Rails.cache.delete('snippets')
  end

end
