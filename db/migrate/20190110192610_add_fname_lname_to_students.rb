class AddFnameLnameToStudents < ActiveRecord::Migration[5.2]
  def change
  	add_column :students, :fname, :string
  	add_column :students, :lname, :string
  end
end
