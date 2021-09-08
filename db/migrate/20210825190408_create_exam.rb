class CreateExam < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.string :name
      t.int :evaluation_id
    end
  end
end
