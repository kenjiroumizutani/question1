class AddCorrectToQuestion1 < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :correct, :text
  end
end
