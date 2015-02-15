class GraduationThesesController < ApplicationController
  before_action :set_graduation_thesis, only: [:show, :edit, :update, :destroy]

  # GET /graduation_theses
  # GET /graduation_theses.json
  def index
    @graduation_theses = GraduationThesis.all
  end

  # GET /graduation_theses/1
  # GET /graduation_theses/1.json
  def show
  end

  # GET /graduation_theses/new
  def new
    @graduation_thesis = GraduationThesis.new
  end

  # GET /graduation_theses/1/edit
  def edit
  end

  # POST /graduation_theses
  # POST /graduation_theses.json
  def create
    @graduation_thesis = GraduationThesis.new(graduation_thesis_params)

    respond_to do |format|
      if @graduation_thesis.save
        format.html { redirect_to @graduation_thesis, notice: 'Graduation thesis was successfully created.' }
        format.json { render :show, status: :created, location: @graduation_thesis }
      else
        format.html { render :new }
        format.json { render json: @graduation_thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /graduation_theses/1
  # PATCH/PUT /graduation_theses/1.json
  def update
    respond_to do |format|
      if @graduation_thesis.update(graduation_thesis_params)
        format.html { redirect_to @graduation_thesis, notice: 'Graduation thesis was successfully updated.' }
        format.json { render :show, status: :ok, location: @graduation_thesis }
      else
        format.html { render :edit }
        format.json { render json: @graduation_thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /graduation_theses/1
  # DELETE /graduation_theses/1.json
  def destroy
    @graduation_thesis.destroy
    respond_to do |format|
      format.html { redirect_to graduation_theses_url, notice: 'Graduation thesis was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graduation_thesis
      @graduation_thesis = GraduationThesis.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graduation_thesis_params
      params.require(:graduation_thesis).permit(:past_assign_id, :name, :view_hash)
    end
end
