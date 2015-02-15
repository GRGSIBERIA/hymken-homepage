class NowAssignsController < ApplicationController
  before_action :set_now_assign, only: [:show, :edit, :update, :destroy]

  # GET /now_assigns
  # GET /now_assigns.json
  def index
    @now_assigns = NowAssign.all
  end

  # GET /now_assigns/1
  # GET /now_assigns/1.json
  def show
  end

  # GET /now_assigns/new
  def new
    @now_assign = NowAssign.new
  end

  # GET /now_assigns/1/edit
  def edit
  end

  # POST /now_assigns
  # POST /now_assigns.json
  def create
    @now_assign = NowAssign.new(now_assign_params)

    respond_to do |format|
      if @now_assign.save
        format.html { redirect_to @now_assign, notice: 'Now assign was successfully created.' }
        format.json { render :show, status: :created, location: @now_assign }
      else
        format.html { render :new }
        format.json { render json: @now_assign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /now_assigns/1
  # PATCH/PUT /now_assigns/1.json
  def update
    respond_to do |format|
      if @now_assign.update(now_assign_params)
        format.html { redirect_to @now_assign, notice: 'Now assign was successfully updated.' }
        format.json { render :show, status: :ok, location: @now_assign }
      else
        format.html { render :edit }
        format.json { render json: @now_assign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /now_assigns/1
  # DELETE /now_assigns/1.json
  def destroy
    @now_assign.destroy
    respond_to do |format|
      format.html { redirect_to now_assigns_url, notice: 'Now assign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_now_assign
      @now_assign = NowAssign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def now_assign_params
      params.require(:now_assign).permit(:student_id)
    end
end
