class AddCommentToTQuestion1 < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :comment, :text
  end
end
