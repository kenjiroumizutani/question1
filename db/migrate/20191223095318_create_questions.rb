class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :questions
      t.text :choice1
      t.text :choice2
      t.text :choice3
      t.text :answer
      t.timestamps
    end
  end
end
