class ProjectsController < ApplicationController
    def new 
        @programmer = Programmer.find(params[:programmer_id])
        @project = Project.new
    end
        def create
            puts params
            programmer = Programmer.find(params[:project][:programmer_id])
            Project.create(params.require(:project).permit(:name, :description, :link, :programmer_id))
            redirect_to programmer
    end
end
