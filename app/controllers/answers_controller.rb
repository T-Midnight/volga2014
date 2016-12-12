class AnswersController < ApplicationController
  def index
    @answer = Answer.all
  end

  def show
  end


  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build
    @user = @answer.user
  end

  def edit
  end

  def create
    @answer = Answer.new(answers_params)

    if @answer.save
      redirect_to @answer.question
    else
      render action: 'new'
    end
  end

  def update

    if @question.update(question_params)
      redirect_to @question, notice: 'Question was successfully updated'
    else
      render action: 'edit'
    end
  end

  def destroy
    @answer.destroy
  end

  def change_helpfulness
    @answer = Answer.find(params[:answer_id])
    @answer.helpfulness += 1
    @answer.save
    redirect_to :back
  end
  private

  def answers_params
    params.require(:answer).permit(:content, :question_id, :user_id)
  end
end
