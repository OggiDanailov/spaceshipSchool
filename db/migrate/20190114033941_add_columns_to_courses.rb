class AddColumnsToCourses < ActiveRecord::Migration[5.2]
  def change
  	add_column :courses, :title, :string
  	add_column :courses, :content, :string
  	add_column :courses, :description, :string
  	add_column :courses, :department_id, :integer
  end
end
