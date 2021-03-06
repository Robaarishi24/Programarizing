class ProgrammersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]

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
    Programmer.create(programmer_params)
    redirect_to programmers_path
  end

  def edit
    @programmer = Programmer.find(params[:id])
  end

  def update
    programmer = Programmer.find(params[:id])
    programmer.update(programmer_params)
    redirect_to programmer_path
  end

  def destroy
    Programmer.find(params[:id]).destroy

    redirect_to programmers_path
  end

  private

  def programmer_params
    params.require(:programmer).permit(:first_name, :last_name, :phone, :email)
  end
end
