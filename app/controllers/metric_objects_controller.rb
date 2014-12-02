class MetricObjectsController < ApplicationController
  before_action :set_metric_object, only: [:show]

  # GET /metric_objects
  # GET /metric_objects.json
  def index
    @metric_objects = MetricObject.all
  end

  # GET /metric_objects/1
  # GET /metric_objects/1.json
  def show
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
