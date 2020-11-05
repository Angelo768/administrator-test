class ProjectsPerformancesController < ApplicationController
  before_action :set_projects_performance, only: [:show, :edit, :update, :destroy]

  # GET /projects_performances
  # GET /projects_performances.json
  def index
    @projects_performances = ProjectsPerformance.all
  end

  # GET /projects_performances/1
  # GET /projects_performances/1.json
  def show
  end

  # GET /projects_performances/new
  def new
    @projects_performance = ProjectsPerformance.new
  end

  # GET /projects_performances/1/edit
  def edit
  end

  # POST /projects_performances
  # POST /projects_performances.json
  def create
    @projects_performance = ProjectsPerformance.new(projects_performance_params)

    respond_to do |format|
      if @projects_performance.save
        format.html { redirect_to @projects_performance, notice: 'Projects performance was successfully created.' }
        format.json { render :show, status: :created, location: @projects_performance }
      else
        format.html { render :new }
        format.json { render json: @projects_performance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects_performances/1
  # PATCH/PUT /projects_performances/1.json
  def update
    respond_to do |format|
      if @projects_performance.update(projects_performance_params)
        format.html { redirect_to @projects_performance, notice: 'Projects performance was successfully updated.' }
        format.json { render :show, status: :ok, location: @projects_performance }
      else
        format.html { render :edit }
        format.json { render json: @projects_performance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects_performances/1
  # DELETE /projects_performances/1.json
  def destroy
    @projects_performance.destroy
    respond_to do |format|
      format.html { redirect_to projects_performances_url, notice: 'Projects performance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projects_performance
      @projects_performance = ProjectsPerformance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def projects_performance_params
      params.require(:projects_performance).permit(:expected_days, :running_days, :phase_status, :number_of_sprints, :accomplished)
    end
end
