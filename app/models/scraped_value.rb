class ScrapedValue < ActiveRecord::Base
	belongs_to :annotation
	belongs_to :revision
end
