class Question < ActiveRecord::Base


	belongs_to :user
    has_many :poll_questions
	has_many :polls, :through => :poll_questions
	has_many :question_aswers
	has_many :questions, :through => :question_aswers
end
