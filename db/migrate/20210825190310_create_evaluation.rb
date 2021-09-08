class CreateEvaluation < ActiveRecord::Migration[6.0]
  def change
    create_table :evaluations do |t|
      t.string :name
    end
  end
end
