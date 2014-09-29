class Poll < ActiveRecord::Base
    
    has_many :poll_questions
	has_many :questions, :through => :poll_questions
end
