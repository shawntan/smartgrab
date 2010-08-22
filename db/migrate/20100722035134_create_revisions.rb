class CreateRevisions < ActiveRecord::Migration
  def self.up
    create_table :revisions do |t|
      t.text :html

      t.timestamps
    end
  end

  def self.down
    drop_table :revisions
  end
end
