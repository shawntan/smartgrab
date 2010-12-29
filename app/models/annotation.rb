class Annotation < ActiveRecord::Base
	has_many :datas
	belongs_to :extractor
end
