class CreateBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :bookmarks do |t|
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
