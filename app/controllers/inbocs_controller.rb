class InbocsController < ApplicationController
  before_action :set_inboc, only: [:show, :edit, :update, :destroy]

  # GET /inbocs
  # GET /inbocs.json
  def index
    @inbocs = Inboc.all
  end

  # GET /inbocs/1
  # GET /inbocs/1.json
  def show
  end

  # GET /inbocs/new
  def new
    @inboc = Inboc.new
  end

  # GET /inbocs/1/edit
  def edit
  end

  # POST /inbocs
  # POST /inbocs.json
  def create
    @inboc = Inboc.new(inboc_params)

    respond_to do |format|
      if @inboc.save
        format.html { redirect_to @inboc, notice: 'Inboc was successfully created.' }
        format.json { render :show, status: :created, location: @inboc }
      else
        format.html { render :new }
        format.json { render json: @inboc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inbocs/1
  # PATCH/PUT /inbocs/1.json
  def update
    respond_to do |format|
      if @inboc.update(inboc_params)
        format.html { redirect_to @inboc, notice: 'Inboc was successfully updated.' }
        format.json { render :show, status: :ok, location: @inboc }
      else
        format.html { render :edit }
        format.json { render json: @inboc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inbocs/1
  # DELETE /inbocs/1.json
  def destroy
    @inboc.destroy
    respond_to do |format|
      format.html { redirect_to inbocs_url, notice: 'Inboc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inboc
      @inboc = Inboc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inboc_params
      params.require(:inboc).permit(:title, :content, :user_id)
    end
end
