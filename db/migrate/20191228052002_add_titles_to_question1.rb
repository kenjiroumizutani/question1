class AddTitlesToQuestion1 < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :title, :text
  end
end
