class AnswersController < ApplicationController
  def index
    @answer = Answer.all
  end

  def show
  end


  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build
  end

  def edit
  end

  def create
    @answer = Answer.new(answers_params)

    respond_to do |format|
      if @answer.save
        format.html {redirect_to @answer, notice: 'Answer was created!'}
        format.json {render action: 'show', status: :created, location: @answer }
      else
        format.html {render action: 'new'}
        format.json {render json: @answer.errors, status: :unprocessable_entity}
      end
    end
  end

  def update

    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated'}
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @answer.destroy
  end

  private
    def answers_params
      params.require(:answers).permit(:content, :question_id, :autor_name, :date_creation)
    end
end
