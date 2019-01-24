class RemoveColumnFromExamsTable < ActiveRecord::Migration[5.2]
  def change
  	remove_column :exams, :deadline
  	remove_column :exams, :name
  end
end
