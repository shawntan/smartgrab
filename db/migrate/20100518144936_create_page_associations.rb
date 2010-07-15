class CreatePageAssociations < ActiveRecord::Migration
  def self.up
    create_table :page_associations do |t|
      t.integer :page_id
      t.integer :extractor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :page_associations
  end
end
