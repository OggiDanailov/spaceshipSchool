class AddDefaultValueToExamsGradeColumn < ActiveRecord::Migration[5.2]
  def change
  	change_column_default :exams, :grade, from: nil, to: "not graded"
  end
end
