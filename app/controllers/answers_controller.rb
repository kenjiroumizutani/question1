class AnswersController < ApplicationController
  
  def new
    @question = Question.find(params[:question_id])
    # params[:id]ではないのは_question~で定義しているkeyが:question_idだから
    # 本来はrails routesでみてuriで書かれている書き方にそうわけだが（だいたいuser/:idとかなってる）
    # ここはanswerのnewなので、その項目をみてもquestionのkeyが書かれていない。よって部分テンプレート(hidden_field_tagのところ)で書いたkeyが書かれていた
    @answer = Answer.new
    @answer.question_id = @question.id
  end

  def show
    @answer = Answer.find(params[:id])
    @question = @answer.question
  end

  def create
    @answer = Answer.create(create_params)
    redirect_to "/answers/#{@answer.id}"
  end

  def edit
    @answer = Answer.find(params[:id])
    @question = @answer.question
  end

  def update
    answer = Answer.find(params[:id])
    answer.update(update_params)
    redirect_to "/answers/#{answer.id}"
  end

  private
  def create_params
    params.require(:answer).permit(:question_id, :answer, :comment).merge(user_id: current_user.id)
  end
  
  def update_params
    params.require(:answer).permit(:answer, :comment)
  end
end
