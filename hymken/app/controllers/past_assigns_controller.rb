class PastAssignsController < ApplicationController
  before_action :set_past_assign, only: [:show, :edit, :update, :destroy]

  # GET /past_assigns
  # GET /past_assigns.json
  def index
    @past_assigns = PastAssign.all
  end

  # GET /past_assigns/1
  # GET /past_assigns/1.json
  def show
  end

  # GET /past_assigns/new
  def new
    @past_assign = PastAssign.new
  end

  # GET /past_assigns/1/edit
  def edit
  end

  # POST /past_assigns
  # POST /past_assigns.json
  def create
    @past_assign = PastAssign.new(past_assign_params)

    respond_to do |format|
      if @past_assign.save
        format.html { redirect_to @past_assign, notice: 'Past assign was successfully created.' }
        format.json { render :show, status: :created, location: @past_assign }
      else
        format.html { render :new }
        format.json { render json: @past_assign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /past_assigns/1
  # PATCH/PUT /past_assigns/1.json
  def update
    respond_to do |format|
      if @past_assign.update(past_assign_params)
        format.html { redirect_to @past_assign, notice: 'Past assign was successfully updated.' }
        format.json { render :show, status: :ok, location: @past_assign }
      else
        format.html { render :edit }
        format.json { render json: @past_assign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /past_assigns/1
  # DELETE /past_assigns/1.json
  def destroy
    @past_assign.destroy
    respond_to do |format|
      format.html { redirect_to past_assigns_url, notice: 'Past assign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_past_assign
      @past_assign = PastAssign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def past_assign_params
      params.require(:past_assign).permit(:student_id, :year)
    end
end
