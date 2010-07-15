class Extractor < ActiveRecord::Base
	has_many :page_associations
	has_many :pages,:through => :page_associations
end
