class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @questions = @user.answered_questions.uniq
    # 意味は@userが答えた質問であってる？
    # answered_questionsはuser.rbのhas_many~で定義してあるメソッド
    # ここが中間テーブルの肝なんじゃないですかね？
  end
  
  def edit
  end

  def update
    current_user.update(update_params)
     redirect_to "/"
  end

  private
  def update_params
    params.require(:user).permit(:username)
  end
  
end
