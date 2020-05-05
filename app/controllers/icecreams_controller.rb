class IcecreamsController < ApplicationController
  before_action :set_icecream, only: [:show, :edit, :update, :destroy]

  # GET /icecreams
  # GET /icecreams.json
  def index
    @icecreams = Icecream.all
  end

  # GET /icecreams/1
  # GET /icecreams/1.json
  def show
  end

  # GET /icecreams/new
  def new
    @icecream = Icecream.new
  end

  # GET /icecreams/1/edit
  def edit
  end

  # POST /icecreams
  # POST /icecreams.json
  def create
    @icecream = Icecream.new(icecream_params)

    respond_to do |format|
      if @icecream.save
        format.html { redirect_to @icecream, notice: 'The ice cream order was successfully created.' }
        format.json { render :show, status: :created, location: @icecream }
      else
        format.html { render :new }
        format.json { render json: @icecream.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /icecreams/1
  # PATCH/PUT /icecreams/1.json
  def update
    respond_to do |format|
      if @icecream.update(icecream_params)
        format.html { redirect_to @icecream, notice: 'The ice cream order was successfully updated.' }
        format.json { render :show, status: :ok, location: @icecream }
      else
        format.html { render :edit }
        format.json { render json: @icecream.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /icecreams/1
  # DELETE /icecreams/1.json
  def destroy
    @icecream.destroy
    respond_to do |format|
      format.html { redirect_to icecreams_url, notice: 'The ice cream order was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_icecream
      @icecream = Icecream.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def icecream_params
      params.require(:icecream).permit(:name, :count, :flavor, :size, :new_account)
    end
end
