class NamespaceSnippetTable < ActiveRecord::Migration
  def change
    rename_table :snippets, :spree_snippets
  end
end
