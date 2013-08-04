class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.references :user

      t.timestamps
    end
  end
end
