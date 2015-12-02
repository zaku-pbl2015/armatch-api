class CreateCorporations < ActiveRecord::Migration
  def change
    create_table :corporations do |t|
      t.string :name, length: { maximum: 16}
      t.text :outline
      t.string :email
      t.string :password, length: { maximum: 16, minimum: 8}

      t.timestamps null: false
    end
  end
end
