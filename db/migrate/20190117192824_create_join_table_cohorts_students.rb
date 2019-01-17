class CreateJoinTableCohortsStudents < ActiveRecord::Migration[5.2]
  def change
    create_join_table :cohorts, :students do |t|
      t.index [:cohort_id, :student_id]
      t.index [:student_id, :cohort_id]
    end
  end
end
