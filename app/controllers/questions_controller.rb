class QuestionsController < ApplicationController

  def index
  end
  
  def new
    @question = Question.new
  end
  
  def create
    Question.create(create_params)
    redirect_to :root and return
    # createしたあとにトップに戻るようにリダイレクト
    # redirect_to :rootだけではアクション内の処理は終了せず次のコードにいってしまう
    # redirect_to :root and returnと書くのがベター
  end
  
  # def show
  # end
  
  def edit
    @question = Question.find(params[:id])
  end
  
  def update
    @question = Question.find(params[:id])
    @question.update(questions_params) 
    # (questions_params)はしたの記述に由来している。answer,comment以外の内容はストロングパラメータではじくよ
  end
  
  def destroy
    question = Question.find(params[:id])
    question.destroy 
    # 権限を絞る場合以下のコードを上についか、if question.user_id == current_user.id
    redirect_to :root and return
  end
  
  private
  def questions_params
    params.permit(:answer,:comment)
  end
  
  def create_params
    params.require(:question).permit(:questions,:title,:choice1,:choice2,:choice3,:correct)
  end
end
