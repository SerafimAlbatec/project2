class AddNameToWindows < ActiveRecord::Migration
  def change
    add_column :windows, :question_name, :string
    add_column :windows, :answer_name, :string
  end
end
