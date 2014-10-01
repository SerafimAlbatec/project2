class PollQuestionsController < ApplicationController
  def index
  	if params[:poll_id]
  		@poll = Poll.where(:id => params[:poll_id]) #To prwto einai ston pinaka kai to params auto pou pernw.Ginete kai alliws des index controller poll
  		@a = PollQuestion.where(:poll_id => params[:poll_id]) #Exw parei polla antikeimena me to idio poll_id kai diaforetika question_id
  		#@a.each do |a|  ####  MALLON den xreiazete autos o pinakas, tzampa ton ekana kai efaga tosi wra....
  		@question = Question.where(:poll_id => params[:poll_id])
  		#end
  		@question.each do |a|
  		  @answers = Answer.where(:question_id => a.id)
  		end
  	end
  end
end
