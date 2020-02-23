class StudentsController < ApplicationController
  before_action :find_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def new
  end

  def create
    # A session is just a place to store data during one request that you can read 
    # during later requests
    session[:form_params] = params.inspect

    redirect_to new_student_path
  end

  private 

  def find_student
    @student = Student.find(params[:id])
  end

end
