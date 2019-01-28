class AddColumnsToArticlesTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :articles, :instructor_id, :integer
  	add_column :articles, :course_id, :integer
  end
end
