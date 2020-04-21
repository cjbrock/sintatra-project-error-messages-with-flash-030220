class RenameColumns < ActiveRecord::Migration
  def change
    rename_column :posts, :title, :character
    rename_column :posts, :body, :quote
  end
end
