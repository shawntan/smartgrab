class Data < ActiveRecord::Base
	belongs_to :revision
	belongs_to :annotation
end
