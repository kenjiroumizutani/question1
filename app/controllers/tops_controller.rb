class TopsController < ApplicationController
  
  def index
    @user = current_user
    @questions = Question.all
    # これだとanswerとquestionの紐付けができてないことになるのか？
  end
  
  def show
    @questions = Question.find(params[:id])
  end
  
end