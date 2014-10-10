class CreateWindows < ActiveRecord::Migration
  def change
    create_table :windows do |t|
      t.integer :result_id
      t.integer :question_id
      t.integer :answer_id
      t.integer :user_id

      t.timestamps
    end
  end
end
