class QuestionsController < ApplicationController

  def index
    @question = Question.find(params[:id])
  end
  
  def create
    Question.create(create_params)
    redirect_to :root and return
    # createしたあとにトップに戻るようにリダイレクト
    # redirect_to :rootだけではアクション内の処理は終了せず次のコードにいってしまう
    # redirect_to :root and returnと書くのがベター
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
  
  def create_params
    params.require(:question).permit(:questions,:title,:choice1,:choice2,:choice3,:correct)
  end
end
