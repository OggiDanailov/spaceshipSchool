class ExamsController < ApplicationController

	



private

def exam_params
	params.require(:exam).permit(:student_id, :instructor_id, :cohort_id, :name, :deadline, :grade, :comment)
end
end
