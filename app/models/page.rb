class Page < ActiveRecord::Base
	belongs_to :extractor
	
	has_many :revisions
end
