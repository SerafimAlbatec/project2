class ResultsController < ApplicationController
  before_action :set_result, only: [:show, :edit, :update, :destroy]

  # GET /results
  # GET /results.json
  def index
    @results = Result.all
  end

  # GET /results/1
  # GET /results/1.json
  def show
  end

  # GET /results/new
  def new
    @result = Result.new
    if params[:poll_id]
      #@result.poll_id = params[:poll_id]
      @poll = Poll.where(:id => params[:poll_id]) #To prwto einai ston pinaka kai to params auto pou pernw.Ginete kai alliws des index controller poll
      @a = PollQuestion.where(:poll_id => params[:poll_id]) #Exw parei polla antikeimena me to idio poll_id kai diaforetika question_id
      @a.each do |a|  ####  MALLON den xreiazete autos o pinakas, tzampa ton ekana kai efaga tosi wra....
      #@question = Question.where(:poll_id => params[:poll_id])  ### Giati ginetai kai etsi
      @question = Question.where(:poll_id => a.poll_id)
      end
      @question.each do |a|
        @answers = Answer.where(:question_id => a.id)
      end
    end
  end

  # GET /results/1/edit
  def edit
  end

  # POST /results
  # POST /results.json
  def create
    @result = Result.new(result_params)
    @result.user_id = current_user.id   #dinw sto apotelesma ton user pou to ekane
    @result.poll_id = params[:poll_id]
    respond_to do |format|
      if @result.save
        format.html { redirect_to @result, notice: 'Result was successfully created.' }
        format.json { render :show, status: :created, location: @result }
      else
        format.html { render :new }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /results/1
  # PATCH/PUT /results/1.json
  def update
    respond_to do |format|
      if @result.update(result_params)
        format.html { redirect_to @result, notice: 'Result was successfully updated.' }
        format.json { render :show, status: :ok, location: @result }
      else
        format.html { render :edit }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /results/1
  # DELETE /results/1.json
  def destroy
    @result.destroy
    respond_to do |format|
      format.html { redirect_to results_url, notice: 'Result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result
      @result = Result.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_params
      params.require(:result).permit(:user_id, :poll_id, :question_id, :answer_id)
    end
end
