class AddFnameLnameToInstructors < ActiveRecord::Migration[5.2]
  def change
  	add_column :instructors, :fname, :string
  	add_column :instructors, :lname, :string
  end
end
