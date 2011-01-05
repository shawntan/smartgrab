class CreateExtractors < ActiveRecord::Migration
  def self.up
    create_table :extractors do |t|
      t.string :domain
      t.int :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :extractors
  end
end
