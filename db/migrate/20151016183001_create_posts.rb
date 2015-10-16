class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :author, :string
      t.column :title, :string
      t.column :body, :string
      t.column :image, :string

      t.timestamps
    end
  end
end
