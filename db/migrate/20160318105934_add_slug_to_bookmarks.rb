class AddSlugToBookmarks < ActiveRecord::Migration[5.0]
  def change
    add_column :bookmarks, :slug, :string
  end
end
