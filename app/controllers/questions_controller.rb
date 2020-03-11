class QuestionsController < ApplicationController

  def index
    @question = Question.find(params[:id])
  end
  
  def show
    @question = Question.find(params[:id])
  end
  
  def edit
    @question = Question.find(params[:id])
  end
  
  def update
    @question = Question.find(params[:id])
    @question.update(questions_params) 
    # (questions_params)はしたの記述に由来している。answer以外の内容はストロングパラメータではじくよ
  end
  
  private
  def questions_params
    params.permit(:answer,:comment)
  end
end
