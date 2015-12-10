class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :title
      t.text :detail
      t.integer :corporation_id
      t.boolean :wanted
      t.date :limited
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
