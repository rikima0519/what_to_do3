class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :title, null: false
      t.date :day
      t.text :explain
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
