class ComparisonObjectsController < ApplicationController
  before_action :set_comparison_object, only: [:show, :edit, :update, :destroy]

  # GET /comparison_objects
  # GET /comparison_objects.json
  def index
    @comparison_objects = ComparisonObject.all
  end

  # GET /comparison_objects/1
  # GET /comparison_objects/1.json
  def show
  end

  # GET /comparison_objects/new
  def new
    @comparison_object = ComparisonObject.new
  end

  # GET /comparison_objects/1/edit
  def edit
  end

  # POST /comparison_objects
  # POST /comparison_objects.json
  def create
    @comparison_object = ComparisonObject.new(comparison_object_params)

    respond_to do |format|
      if @comparison_object.save
        format.html { redirect_to @comparison_object, notice: 'Comparison object was successfully created.' }
        format.json { render :show, status: :created, location: @comparison_object }
      else
        format.html { render :new }
        format.json { render json: @comparison_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comparison_objects/1
  # PATCH/PUT /comparison_objects/1.json
  def update
    respond_to do |format|
      if @comparison_object.update(comparison_object_params)
        format.html { redirect_to @comparison_object, notice: 'Comparison object was successfully updated.' }
        format.json { render :show, status: :ok, location: @comparison_object }
      else
        format.html { render :edit }
        format.json { render json: @comparison_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comparison_objects/1
  # DELETE /comparison_objects/1.json
  def destroy
    @comparison_object.destroy
    respond_to do |format|
      format.html { redirect_to comparison_objects_url, notice: 'Comparison object was successfully destroyed.' }
      format.json { head :no_content }
    end
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
