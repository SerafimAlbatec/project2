class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.integer :answer_number
      t.integer :user_id
      t.integer :poll_id

      t.timestamps
    end
  end
end
