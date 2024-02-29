class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :nickname, null: false, limit: 32
      t.string :name, null: false, limit: 100
      t.date :date_of_birth, null: false
      t.text :stack, array: true, default: []

      t.timestamps
    end
    add_index :people, :nickname, unique: true
  end
end
