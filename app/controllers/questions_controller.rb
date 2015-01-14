class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def create
    @question = Question.new(question_params)
    @question.save
    redirect_to root_path
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
  end

  private
  def question_params
    params.require(:question).permit(:title, :content)
  end
end
