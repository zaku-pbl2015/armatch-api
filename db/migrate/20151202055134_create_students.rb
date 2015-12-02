class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name, length: { maximum: 16}
      t.string :email, length: { maximum: 25}
      t.string :password, length: { maximum: 16}
      t.text :skillarray
      t.text :apeal

      t.timestamps null: false
    end
  end
end
