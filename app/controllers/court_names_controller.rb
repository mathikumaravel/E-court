class CourtNamesController < ApplicationController
  before_action :set_court_name, only: %i[ show edit update destroy ]

  # GET /court_names or /court_names.json
  def index
    @court_names = CourtName.all
  end

  # GET /court_names/1 or /court_names/1.json
  def show
  end

  # GET /court_names/new
  def new
    @court_name = CourtName.new
  end

  # GET /court_names/1/edit
  def edit
  end

  # POST /court_names or /court_names.json
  def create
    @court_name = CourtName.new(court_name_params)
  
    respond_to do |format|
      if @court_name.save
        format.html { redirect_to court_name_url(@court_name), notice: "Court name was successfully created." }
        format.json { render :show, status: :created, location: @court_name }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @court_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /court_names/1 or /court_names/1.json
  def update
    respond_to do |format|
      if @court_name.update(court_name_params)
        format.html { redirect_to court_name_url(@court_name), notice: "Court name was successfully updated." }
        format.json { render :show, status: :ok, location: @court_name }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @court_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /court_names/1 or /court_names/1.json
  def destroy
    @court_name.destroy

    respond_to do |format|
      format.html { redirect_to court_names_url, notice: "Court name was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_court_name
      @court_name = CourtName.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def court_name_params
      params.require(:court_name).permit(:court_name)
    end
end
