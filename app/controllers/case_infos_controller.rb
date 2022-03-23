class CaseInfosController < ApplicationController
  before_action :set_case_info, only: %i[ show edit update destroy ]

  # GET /case_infos or /case_infos.json
  def index
    @case_infos = CaseInfo.all
  end

  # GET /case_infos/1 or /case_infos/1.json
  def show
    @case_info = CaseInfo.find(params[:id])
   

  end

  # GET /case_infos/new
  def new
    @case_info = CaseInfo.new
   
    
  end

  # GET /case_infos/1/edit
  def edit
  end

  # POST /case_infos or /case_infos.json
  def create
    @case_info = CaseInfo.new(case_info_params)
    @case_info.user = current_user
    respond_to do |format|
      if @case_info.save
        format.html { redirect_to case_info_url(@case_info), notice: "Case info was successfully created." }
        format.json { render :show, status: :created, location: @case_info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @case_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /case_infos/1 or /case_infos/1.json
  def update
    respond_to do |format|
      if @case_info.update(case_info_params)
        format.html { redirect_to case_info_url(@case_info), notice: "Case info was successfully updated." }
        format.json { render :show, status: :ok, location: @case_info }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @case_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /case_infos/1 or /case_infos/1.json
  def destroy
    @case_info.destroy

    respond_to do |format|
      format.html { redirect_to case_infos_url, notice: "Case info was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_info
      @case_info = CaseInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def case_info_params
      params.require(:case_info).permit(:case_category, :judge_name, :registration_number, :case_stage, :petitioner_name, :petitioner_advocate, :respondent_name, :respondent_advocate, :business_on_date, :hearing_date, :purpose_of_hearing, :court_name_id, :case_type_id, :case_category_id, :judge_id)
    end
    def require_same_user
      if current_user != @case_info.user && !current_user.admin?
        flash[:alert] = "your not admin"  
      redirect_to_@case_info
      end
    end
end
