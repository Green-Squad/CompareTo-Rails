class ComparisonObjectsController < ApplicationController
  before_action :set_comparison_object, only: [:show]

  # GET /comparison_objects
  # GET /comparison_objects.json
  def index
    @comparison_objects = ComparisonObject.all
  end

  # GET /comparison_objects/1
  # GET /comparison_objects/1.json
  def show
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comparison_object
      @comparison_object = ComparisonObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comparison_object_params
      params.require(:comparison_object).permit(:name, :icon, :color)
    end
end
