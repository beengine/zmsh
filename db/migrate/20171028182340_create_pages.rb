class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.string :title, null: false
      t.string :slug, null: false
      t.string :nav_title
      t.text :body

      t.timestamps
    end

    add_index :pages, :slug, unique: true
  end
end
