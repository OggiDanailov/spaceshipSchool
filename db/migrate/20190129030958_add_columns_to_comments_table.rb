class AddColumnsToCommentsTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :comments, :instructor_id, :integer
  	add_column :comments, :student_id, :integer
  end
end
