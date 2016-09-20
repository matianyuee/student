class StudentinfosController < ApplicationController
  def new
    @student = Studentinfo.new
  end

  def create
    @student = Studentinfo.new(student_prams)
    @student.save
    redirect_to @student
  end

  def index
    @students = Studentinfo.all
  end

  def show
    @student = Studentinfo.find(params[:id])
    @container = Container.find(@student.container_id)
  end

  def edit
    @student = Studentinfo.find(params[:id])
  end

  def update
    @student = Studentinfo.find(params[:id])
    if @student.update(student_prams)
      redirect_to @student
    else
      render 'edit'
    end
  end

  def selectstudent
    con_id = 0 # 班级id 默认wei 0
    if ((con_id= params[:container_id].to_i) > 0)
      @container = Container.find(con_id)
      @student = @container.studentinfos.where(["name like ?","%#{params[:name]}%"])
    else
      @student = Studentinfo.where(["name like ?","%#{params[:name]}%"])
    end
  end

  def destroy
    @student = Studentinfo.find(params[:id])
    @student.destroy
    redirect_to studentinfos_path
  end

  private
    def student_prams
        params.require(:studentinfo).permit(:name, :gender, :container_id)
    end
end
