class Result < ActiveRecord::Base
	belongs_to :users

	has_many :windows
	accepts_nested_attributes_for :windows
end
