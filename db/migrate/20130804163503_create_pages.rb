class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.references :comic
      t.string :title, default: nil

      t.timestamps
    end
  end
end
