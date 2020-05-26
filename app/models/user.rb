class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  #association
  has_many :questions
  has_many :answers
  has_many :answered_questions, through: :answers, source: :question
  
end
