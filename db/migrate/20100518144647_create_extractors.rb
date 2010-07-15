class CreateExtractors < ActiveRecord::Migration
  def self.up
    create_table :extractors do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :extractors
  end
end
