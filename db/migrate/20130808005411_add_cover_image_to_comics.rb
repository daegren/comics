class AddCoverImageToComics < ActiveRecord::Migration
  def change
    add_column :comics, :cover_page, :string
  end
end
