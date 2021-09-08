class AddStatusToExams < ActiveRecord::Migration[6.0]
  def change
    add_column :exams, :status, :boolean
  end
end
