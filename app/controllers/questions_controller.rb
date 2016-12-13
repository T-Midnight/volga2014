class QuestionsController < ApplicationController

  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all.order vote: :desc
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.order created_at: :desc
    @user = @question.user
    @question.visits_counter += 1
    @question.save
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to @question
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    if @question.update(question_params)
      redirect_to @question
    else
      render action: 'edit'
    end
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    redirect_to questions_url
  end

  def change_vote_up
    @question = Question.find(params[:question_id])
    @question.vote += 1;
    @question.save
    redirect_to :back
  end

  def change_vote_down
    @question = Question.find(params[:question_id])
    @question.vote -= 1;
    @question.save
    redirect_to :back
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_question
    @question = Question.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  #
  def question_params
    params.require(:question).permit(:title, :message, :user_id, :vote)
  end
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
