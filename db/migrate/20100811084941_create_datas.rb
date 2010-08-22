class CreateDatas < ActiveRecord::Migration
  def self.up
    create_table :datas do |t|
      t.integer :annotation_id
      t.text :value

      t.timestamps
    end
  end

  def self.down
    drop_table :datas
  end
end
