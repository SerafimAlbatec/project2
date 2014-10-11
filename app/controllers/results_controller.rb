class ResultsController < ApplicationController
  before_action :set_result, only: [:show, :edit, :update, :destroy]
  before_action :check_auth, only: [:new]
  before_action :check_index, only: [:index]

  def check_auth
    # Elegxw an to survey einai tou admin pou to eftiakse
    @poll = Poll.where(:id => params[:poll_id]).first
    if (current_user.id == @poll.user_id)
      flash[:success] = 'Sorry you cant take this survey, it is yours'
      redirect_to(polls_path)
    end
    ####################################################################################################

    @result = Result.where(:poll_id => params[:poll_id])
    a = 0
    @result.each do |c| #Elegxw an exei dei ta apotelesmata
      if (c.question_id == current_user.id)
        a = a + 1
      end
    end
    if (a > 0) #An ta exei dei
      flash[:danger] = 'Sorry you cant take this survey, you saw the results'
      redirect_to(polls_path)
    end
  end

  def check_index
    @result = Result.where(:poll_id => params[:poll_id])
    i = 0
    @result.each do |a|
      if (current_user.id == a.user_id) #Elegxw an o xristeis exei apantisei se survey kai prostheto ston counter
        i = i + 1
      end
    end
    # An o counter einai 0, o xristis den exei apantisei kai vlepei ta apotelesmata ara meta den mporei na apantisei. Ara paw sto check_auth kai elegxw
    if (i == 0) #An dei ta apotelesmata xwris na exei patisei take survey
      @result.each do |c|
        c.question_id = current_user.id #Ston pinaka vazw oti ta eida sto question_id gia na min kanw kai alles stiles!!
        c.save
      end
    end
  end


  # GET /results
  # GET /results.json
  def index
    @results = Result.where(:poll_id => params[:poll_id])
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
        #@answers = Answer.where(:question_id => a.id)
      end
      a = @question.count
      if (a != 1)
        a = (a/2)
      end
      a.times do
      windows = @result.windows.build
    end
    end
    @hash = Hash.new
  end

  def ena
    @result = Result.new
    if params[:poll_id]
      #@result.poll_id = params[:poll_id]
      @poll = Poll.where(:id => params[:poll_id]) #To prwto einai ston pinaka kai to params auto pou pernw.Ginete kai alliws des index controller poll
      @a = PollQuestion.where(:poll_id => params[:poll_id]) #Exw parei polla antikeimena me to idio poll_id kai diaforetika question_id
      @a.each do |a|  ####  MALLON den xreiazete autos o pinakas, tzampa ton ekana kai efaga tosi wra....
      #@question = Question.where(:poll_id => params[:poll_id])  ### Giati ginetai kai etsi
      @question = Question.where(:poll_id => a.poll_id) # Pernaw oles tis erwtiseis me poll_id pou thelw
      end
      @question.each do |a|
        #@answers = Answer.where(:question_id => a.id) #Pernaw oles tis teleftaies apantiseis!! Ara den mas kanei!! 
      end
    end
    @hash = Hash.new
  end

  # GET /results/1/edit
  def edit
  end


  # POST /results
  # POST /results.json
  def create
    @result = Result.new(result_params)
    @result.user_id = current_user.id   #dinw sto apotelesma ton user pou to ekane
    @result.poll_id = params[:poll_id] #Den stelnw pisw to poll_id opote den douleuei , twra doueuei
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
      params.require(:result).permit(:user_id, :poll_id, :question_id, :answer_id => [], :windows_attributes => [:id, :result_id, :question_id, :answer_id, :question_name, :answer_name])
    end
end
