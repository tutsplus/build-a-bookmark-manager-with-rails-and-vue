class AddImageAndParagraphToBookmarks < ActiveRecord::Migration[5.0]
  def change
    add_column :bookmarks, :image, :string
    add_column :bookmarks, :paragraph, :string
  end
end
