class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :offer_id
      t.integer :student_id
      t.boolean :cancel_flag, default:0

      t.timestamps null: false
    end
  end
end
