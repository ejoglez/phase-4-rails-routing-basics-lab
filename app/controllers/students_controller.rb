class StudentsController < ApplicationController

    def index
        students = Student.all 
        render json: students
    end

    def grades
        all_by_grade = Student.order(grade: :desc)
        render json: all_by_grade
    end

    def highest_grade
        all_by_grade = Student.order(grade: :desc)
        render json: all_by_grade[0]
    end

end
