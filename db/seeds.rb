require "csv"

questions_csv = CSV.readlines("db/questions.csv")
questions_csv.each do |row|
  Question.create(questions: row[1], choice1: row[2], choice2: row[3], choice3: row[4], answer: row[5], created_at: row[6], update_at: row[7], title: row[8], correct: row[9], comment:[10])
end