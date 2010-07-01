class CreateAnnotations < ActiveRecord::Migration
  def self.up
    create_table :annotations do |t|
      t.string :css_selector
      t.integer :page_id
      t.integer :label_id

      t.timestamps
    end
  end

  def self.down
    drop_table :annotations
  end
end
