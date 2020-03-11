require "csv"

questions_csv = CSV.readlines("db/questions.csv")
questions_csv.each do |row|
  Question.create(questions: row[1], choice1: row[2], choice2: row[5], choice3: row[6], answer: row[7], created_at: row[8], update_at: row[9], title: row[10], correct: row[11], comment:[12])
  # Product.createのproductは変えなくていいの？変える？
end