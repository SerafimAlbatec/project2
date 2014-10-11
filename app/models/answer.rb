class Answer < ActiveRecord::Base

	has_many :question_aswers
	has_many :questions, :through => :question_aswers

    validates_presence_of :name
end
