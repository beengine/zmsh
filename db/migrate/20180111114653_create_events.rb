class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.date :date, null: false
      t.text :body, null: false
      t.string :picture

      t.timestamps
    end
  end
end
