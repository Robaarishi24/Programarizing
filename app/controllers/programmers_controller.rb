class ProgrammersController < ApplicationController
    def index
        @programmers = Programmer.all
    end
    def show
        @programmer = Programmer.find(params[:id])
        @projects = @programmer.projects
    end
    def new 
        @programmer = Programmer.new 
    end
    def create
        Programmer.create(params.require(:programmer).permit(:first_name, :last_name, :phone, :email))
    redirect_to programmers_path
    end
end
