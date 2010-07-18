ActiveRecord::Base.include_root_in_json = false
class Page < ActiveRecord::Base
	belongs_to :user
	has_many :annotations
	has_many :page_associations
	has_many :extractors, :through => :page_associations
end
