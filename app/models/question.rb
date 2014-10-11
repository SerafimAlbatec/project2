class Question < ActiveRecord::Base


	belongs_to :user
    has_many :poll_questions, dependent: :destroy
	has_many :polls, :through => :poll_questions
	has_many :question_aswers, dependent: :destroy
	has_many :questions, :through => :question_aswers

    validates_presence_of :name
end
