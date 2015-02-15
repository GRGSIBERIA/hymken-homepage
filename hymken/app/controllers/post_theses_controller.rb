class PostThesesController < ApplicationController
  before_action :set_post_thesis, only: [:show, :edit, :update, :destroy]

  # GET /post_theses
  # GET /post_theses.json
  def index
    @post_theses = PostThesis.all
  end

  # GET /post_theses/1
  # GET /post_theses/1.json
  def show
  end

  # GET /post_theses/new
  def new
    @post_thesis = PostThesis.new
  end

  # GET /post_theses/1/edit
  def edit
  end

  # POST /post_theses
  # POST /post_theses.json
  def create
    @post_thesis = PostThesis.new(post_thesis_params)

    respond_to do |format|
      if @post_thesis.save
        format.html { redirect_to @post_thesis, notice: 'Post thesis was successfully created.' }
        format.json { render :show, status: :created, location: @post_thesis }
      else
        format.html { render :new }
        format.json { render json: @post_thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_theses/1
  # PATCH/PUT /post_theses/1.json
  def update
    respond_to do |format|
      if @post_thesis.update(post_thesis_params)
        format.html { redirect_to @post_thesis, notice: 'Post thesis was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_thesis }
      else
        format.html { render :edit }
        format.json { render json: @post_thesis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_theses/1
  # DELETE /post_theses/1.json
  def destroy
    @post_thesis.destroy
    respond_to do |format|
      format.html { redirect_to post_theses_url, notice: 'Post thesis was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_thesis
      @post_thesis = PostThesis.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_thesis_params
      params.require(:post_thesis).permit(:past_assign_id, :name, :quotation, :view_hash)
    end
end
