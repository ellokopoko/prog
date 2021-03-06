class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :check_user, only: [:add_user]
  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
    render "index", status: 203 if @projects.empty?
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @task = Task.new
    @tasks = @project.tasks
    
    @user = User.new
    @users = @project.users
  end

  # GET /projects/add_user
  def add_user
    @project.users.push @user
  end
  
  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    # @project = current_user.projects.new(project_params)
    @project = Project.new(project_params)
    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      unless Project.where(id: params[:id]).first
        render template: "shared/page_404", status: 404
      else
        @project = Project.find(params[:id])
      end
    end

    def check_user
      unless @user = User.where(email: params[:email]).first
        @user = User.first
      end
      unless @project = Project.find(params[:project_id])
        @project = Project.first
      end
      
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      #  params.require(:project).permit(:name, tasks_attributes: task_params)
      params.require(:project).permit(:name, :description, :date)
    end
    # def task_params
      # [:id, :description, :deadline_date, :_destroy, :assignee_id, :name]
    # end
end
