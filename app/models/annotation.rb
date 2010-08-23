class Annotation < ActiveRecord::Base
	has_many :datas
	has_and_belongs_to_many :pages
end
