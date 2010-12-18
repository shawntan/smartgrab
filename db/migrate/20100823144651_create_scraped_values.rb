class CreateScrapedValues < ActiveRecord::Migration
  def self.up
    create_table :scraped_values do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :scraped_values
  end
end
