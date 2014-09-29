class CreateQuestionAswers < ActiveRecord::Migration
  def change
    create_table :question_aswers do |t|
      t.integer :question_id
      t.integer :answer_id

      t.timestamps
    end
  end
end
