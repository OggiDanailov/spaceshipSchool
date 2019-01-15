class AddColumnsToExamsTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :exams, :name, :string
  	add_column :exams, :deadline, :datetime
  	add_column :exams, :grade, :integer
  	add_column :exams, :comment, :string
  	add_column :exams, :student_id, :integer
  	add_column :exams, :cohort_id, :integer
  	add_column :exams, :instructor_id, :integer
  end
end
