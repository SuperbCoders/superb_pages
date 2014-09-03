class CreateMetaBlocks < ActiveRecord::Migration
  def change
    create_table :meta_blocks do |t|
      t.belongs_to :object, polymorphic: true
      t.string   :title
      t.text     :description
      t.text     :keywords
      t.text     :javascript
      t.string   :fb_image
      t.string   :fb_title
      t.text     :fb_description

      t.timestamps
    end
    add_index :meta_blocks, [:object_id, :object_type]
  end
end
