class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :content
      t.string :answer
      t.string :alternate_answer

      t.timestamps
    end
  end
end
