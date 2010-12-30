class Annotation < ActiveRecord::Base
	belongs_to :extractor
	
	has_many :datas
end
