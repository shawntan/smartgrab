class Revision < ActiveRecord::Base
	belongs_to :page
	has_many :scraped_values
end
