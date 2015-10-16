class RenamePostTagsTable < ActiveRecord::Migration
  def change
    rename_table :post_tags, :posts_tags
  end
end
