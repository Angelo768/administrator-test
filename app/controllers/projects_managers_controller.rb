class ProjectsManagersController < ApplicationController
  before_action :set_projects_manager, only: [:show, :edit, :update, :destroy]

  # GET /projects_managers
  # GET /projects_managers.json
  def index
    @projects_managers = ProjectsManager.all
  end

  # GET /projects_managers/1
  # GET /projects_managers/1.json
  def show
  end

  # GET /projects_managers/new
  def new
    @projects_manager = ProjectsManager.new
  end

  # GET /projects_managers/1/edit
  def edit
  end

  # POST /projects_managers
  # POST /projects_managers.json
  def create
    @projects_manager = ProjectsManager.new(projects_manager_params)

    respond_to do |format|
      if @projects_manager.save
        format.html { redirect_to @projects_manager, notice: 'Projects manager was successfully created.' }
        format.json { render :show, status: :created, location: @projects_manager }
      else
        format.html { render :new }
        format.json { render json: @projects_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects_managers/1
  # PATCH/PUT /projects_managers/1.json
  def update
    respond_to do |format|
      if @projects_manager.update(projects_manager_params)
        format.html { redirect_to @projects_manager, notice: 'Projects manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @projects_manager }
      else
        format.html { render :edit }
        format.json { render json: @projects_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects_managers/1
  # DELETE /projects_managers/1.json
  def destroy
    @projects_manager.destroy
    respond_to do |format|
      format.html { redirect_to projects_managers_url, notice: 'Projects manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projects_manager
      @projects_manager = ProjectsManager.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def projects_manager_params
      params.require(:projects_manager).permit(:start_date, :end_date, :number_of_changes, :service_type, :project_value, :manager, :allocated_members, :nps_rate, :observations)
    end
end
