class AddColumnsToCohortsTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :cohorts, :name, :string
  	add_column :cohorts, :comment, :string
  	add_column :cohorts, :credits, :integer
  	add_column :cohorts, :starting_date, :datetime
  	add_column :cohorts, :ending_date, :datetime
  	add_column :cohorts, :course_id, :integer
  	add_column :cohorts, :instructor_id, :integer
  end
end
