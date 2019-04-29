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
def like2
     @department = Department.find(params[:id])
     unless @department.find_like(current_user)  # 如果已经按讚过了，就略过不再新增
        Like2.create( :user => current_user, :department => @department)
      end
  
      redirect_to users_path
    end
  
    def unlike2
      @department = Department.find(params[:id])
      like2 = @department.find_like(current_user)
      like.destroy
  
      redirect_to posts_path
    end

private

def de_params
  params.require(:department).permit(:name )
end

end
