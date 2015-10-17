class ChangeColumnNameImage < ActiveRecord::Migration
  def change
    rename_column :posts, :image, :picture
  end
end
