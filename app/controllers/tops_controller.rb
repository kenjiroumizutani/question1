class TopsController < ApplicationController
  
  def index
     @questions = Question.all
     @question = Question.new
    # top_controllerだけどフォームはつくれるはず。profyを参考にしてみよう。
  end
  
  def show
    @questions = Question.find(params[:id])
  end
  
end
