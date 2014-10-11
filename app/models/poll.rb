class Poll < ActiveRecord::Base
    
    has_many :poll_questions
	has_many :questions, :through => :poll_questions
	belongs_to :user

	validates_uniqueness_of :name
    validates_presence_of :name


end
