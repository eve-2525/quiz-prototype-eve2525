class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.string :title,               null: false
      t.text :problem,               null: false
      t.string :answer1,               null: false
      t.string :answer2,               null: false
      t.string :answer3,               null: false
      t.string :answer4,               null: false
      t.text :commentary
      t.integer :answer_number,               null: false
      t.references :user,               null: false, foreign_key: true
      t.timestamps
    end
  end
end
