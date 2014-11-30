class MetricObjectsController < ApplicationController
  before_action :set_metric_object, only: [:show, :edit, :update, :destroy]

  # GET /metric_objects
  # GET /metric_objects.json
  def index
    @metric_objects = MetricObject.all
  end

  # GET /metric_objects/1
  # GET /metric_objects/1.json
  def show
  end

  # GET /metric_objects/new
  def new
    @metric_object = MetricObject.new
  end

  # GET /metric_objects/1/edit
  def edit
  end

  # POST /metric_objects
  # POST /metric_objects.json
  def create
    @metric_object = MetricObject.new(metric_object_params)

    respond_to do |format|
      if @metric_object.save
        format.html { redirect_to @metric_object, notice: 'Metric object was successfully created.' }
        format.json { render :show, status: :created, location: @metric_object }
      else
        format.html { render :new }
        format.json { render json: @metric_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metric_objects/1
  # PATCH/PUT /metric_objects/1.json
  def update
    respond_to do |format|
      if @metric_object.update(metric_object_params)
        format.html { redirect_to @metric_object, notice: 'Metric object was successfully updated.' }
        format.json { render :show, status: :ok, location: @metric_object }
      else
        format.html { render :edit }
        format.json { render json: @metric_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metric_objects/1
  # DELETE /metric_objects/1.json
  def destroy
    @metric_object.destroy
    respond_to do |format|
      format.html { redirect_to metric_objects_url, notice: 'Metric object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metric_object
      @metric_object = MetricObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metric_object_params
      params.require(:metric_object).permit(:value, :metric_id, :comparison_object_id)
    end
end
