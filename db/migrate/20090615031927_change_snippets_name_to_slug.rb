class ChangeSnippetsNameToSlug < ActiveRecord::Migration
  def self.up
    rename_column :snippets, :name, :slug
  end

  def self.down
    rename_column :snippets, :slug, :name
  end
end
