class StudentsController < ApplicationController
    def index 
        render json: Student.all
    end

    def grades
        grades = Student.all.order("grade DESC")
        render json: grades
    end

    def highest_grade
        highest = Student.all.order("grade DESC").first
        render json: highest
    end
end
