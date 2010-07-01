class Page < ActiveRecord::Base
	has_many :annotations
	has_many :page_associations
	has_many :extractors, :through => :page_associations
end
