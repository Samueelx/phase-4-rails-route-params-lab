class StudentsController < ApplicationController

  def index
    if params[:name] == nil
      students = Student.all
      render json: students
    else
      students = Student.where("first_name = ? OR last_name = ?", params[:name].capitalize, params[:name].capitalize)
      render json: students       
    end
  end

  def individual
    student = Student.find(params[:id])
    render json: student
  end

end
