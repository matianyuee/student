class ContainersController < ApplicationController
  def new
    @container = Container.new
  end

  def create
    @container = Container.new(container_parpams)
    @container.save
    redirect_to @container
  end

  def show
    @container = Container.find(params[:id])
    @students = @container.studentinfos
    @teachers = @container.teachers
  end

  def index
    @containers = Container.all
    
  end

  def edit
    @container = Container.find(params[:id])
  end

  def update
    @container = Container.find(params[:id])
    if @container.update(container_parpams)
      redirect_to @container
    else
      render 'edit'
    end
  end

  def destroy
    @container = Container.find(params[:id])
    @container.destroy
    redirect_to containers_path
  end

  private
    def container_parpams
      params.require(:container).permit(:name)
    end
end
