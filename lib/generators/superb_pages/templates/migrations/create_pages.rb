class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :slug
      t.string :title
      t.text :text
      t.boolean :published, default: true

      t.timestamps
    end
    add_index :pages, :slug, unique: true
  end
end
