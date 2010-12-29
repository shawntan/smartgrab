ActiveRecord::Base.include_root_in_json = false
class Page < ActiveRecord::Base
	belongs_to :extractor
	has_many :revisions
end
