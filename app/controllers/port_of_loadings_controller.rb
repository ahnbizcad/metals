class PortOfLoadingsController < ApplicationController
  before_action :set_port_of_loading, only: [:show, :edit, :update, :destroy]

  # GET /port_of_loadings
  # GET /port_of_loadings.json
  def index
    @port_of_loadings = PortOfLoading.all.reverse_order
  end

  # GET /port_of_loadings/1
  # GET /port_of_loadings/1.json
  def show
  end

  # GET /port_of_loadings/new
  def new
    @port_of_loading = PortOfLoading.new
  end

  # GET /port_of_loadings/1/edit
  def edit
  end

  # POST /port_of_loadings
  # POST /port_of_loadings.json
  def create
    @port_of_loading = PortOfLoading.new(port_of_loading_params)

    respond_to do |format|
      if @port_of_loading.save
        format.html { redirect_to @port_of_loading, notice: 'Port of loading was successfully created.' }
        format.json { render :show, status: :created, location: @port_of_loading }
      else
        format.html { render :new }
        format.json { render json: @port_of_loading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /port_of_loadings/1
  # PATCH/PUT /port_of_loadings/1.json
  def update
    respond_to do |format|
      if @port_of_loading.update(port_of_loading_params)
        format.html { redirect_to @port_of_loading, notice: 'Port of loading was successfully updated.' }
        format.json { render :show, status: :ok, location: @port_of_loading }
      else
        format.html { render :edit }
        format.json { render json: @port_of_loading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /port_of_loadings/1
  # DELETE /port_of_loadings/1.json
  def destroy
    @port_of_loading.destroy
    respond_to do |format|
      format.html { redirect_to port_of_loadings_url, notice: 'Port of loading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_port_of_loading
      @port_of_loading = PortOfLoading.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def port_of_loading_params
      params.require(:port_of_loading).permit()
    end
end
