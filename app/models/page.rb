ActiveRecord::Base.include_root_in_json = false
class Page < ActiveRecord::Base
	belongs_to :user
	has_many :revisions
	has_and_belongs_to_many :annotations
end
