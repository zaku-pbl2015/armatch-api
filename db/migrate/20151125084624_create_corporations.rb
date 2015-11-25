class CreateCorporations < ActiveRecord::Migration
  def change
    create_table :corporations do |t|
      t.string :name
      t.text :outline

      t.timestamps null: false
    end
  end
end
