class DepartmentsController < ApplicationController

def index
  @departments = Department.all
end

def new
  @department = Department.new
end

def create
  @department = Department.new(de_params)

  @department.save

  redirect_to departments_url
end

def edit
end 

def update
end 

def destroy
end 

def show 
end

private

def de_params
  params.require(:department).permit(:name )
end

end
