class Question < ApplicationRecord

#association
  belongs_to :user
  has_many :answers

  #validation
  validates_presence_of :user_id, :text

  def user_answer(user_id)
    Answer.find_by(user_id: user_id, question_id: id)
  end
  # find_byメソッド は検索条件として複数のカラムを指定できるという特徴があります。
  # 今回の例でいうと、answersテーブルから user_idカラムの値が
  # 「その回答をしたユーザーのid」と一致し、かつquestion_idカラムの値が
  # 「その質問のid」と一致する回答を検索し、取得しています。
  # user_id: user.idじゃないの？インスタンス変数でuserを決めてないとuser.idは習得できないのかな？
  # そもそもなんでanswerモデルにアクセスするメソッドをquestionモデルにメソッドとして記載しているのか？
  # 中間テーブルを使うときのメソッドは最後に習得するテーブルのモデルに書くみたい？
  # 今回ならAnswerを通してquestionテーブルを取りに行ってるから
  # まてよ？answerモデルでquestionテーブルをとりにいけることはおかしくないか？
end
