class RemoveBodeFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :bode, :text
  end
end
