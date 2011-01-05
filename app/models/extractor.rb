ActiveRecord::Base.include_root_in_json = false
class Extractor < ActiveRecord::Base
	belongs_to	:user
	has_many		:pages
	has_many		:annotations
	has_many		:revisions
end
