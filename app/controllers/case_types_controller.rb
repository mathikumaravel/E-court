class CaseTypesController < ApplicationController
  before_action :set_case_type, only: %i[ show edit update destroy ]

  # GET /case_types or /case_types.json
  def index
    @case_types = CaseType.all
  end

  # GET /case_types/1 or /case_types/1.json
  def show
  end

  # GET /case_types/new
  def new
    @case_type = CaseType.new
  end

  # GET /case_types/1/edit
  def edit
  end

  # POST /case_types or /case_types.json
  def create
    @case_type = CaseType.new(case_type_params)

    respond_to do |format|
      if @case_type.save
        format.html { redirect_to case_type_url(@case_type), notice: "Case type was successfully created." }
        format.json { render :show, status: :created, location: @case_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @case_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /case_types/1 or /case_types/1.json
  def update
    respond_to do |format|
      if @case_type.update(case_type_params)
        format.html { redirect_to case_type_url(@case_type), notice: "Case type was successfully updated." }
        format.json { render :show, status: :ok, location: @case_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @case_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /case_types/1 or /case_types/1.json
  def destroy
    @case_type.destroy

    respond_to do |format|
      format.html { redirect_to case_types_url, notice: "Case type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_type
      @case_type = CaseType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def case_type_params
      params.require(:case_type).permit(:type_of_case)
    end
end
