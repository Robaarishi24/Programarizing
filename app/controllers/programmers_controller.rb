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
end
