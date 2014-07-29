class PortOfDischargesController < ApplicationController
  before_action :set_port_of_discharge, only: [:show, :edit, :update, :destroy]

  # GET /port_of_discharges
  # GET /port_of_discharges.json
  def index
    @port_of_discharges = PortOfDischarge.all.reverse_order
    @count = PortofDischarge.count
  end

  # GET /port_of_discharges/1
  # GET /port_of_discharges/1.json
  def show
  end

  # GET /port_of_discharges/new
  def new
    @port_of_discharge = PortOfDischarge.new
  end

  # GET /port_of_discharges/1/edit
  def edit
  end

  # POST /port_of_discharges
  # POST /port_of_discharges.json
  def create
    @port_of_discharge = PortOfDischarge.new(port_of_discharge_params)

    respond_to do |format|
      if @port_of_discharge.save
        format.html { redirect_to port_of_discharges_path, notice: 'Port of discharge was successfully created.' }
        format.json { render :show, status: :created, location: @port_of_discharge }
      else
        format.html { render :new }
        format.json { render json: @port_of_discharge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /port_of_discharges/1
  # PATCH/PUT /port_of_discharges/1.json
  def update
    respond_to do |format|
      if @port_of_discharge.update(port_of_discharge_params)
        format.html { redirect_to @port_of_discharge, notice: 'Port of discharge was successfully updated.' }
        format.json { render :show, status: :ok, location: @port_of_discharge }
      else
        format.html { render :edit }
        format.json { render json: @port_of_discharge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /port_of_discharges/1
  # DELETE /port_of_discharges/1.json
  def destroy
    @port_of_discharge.destroy
    respond_to do |format|
      format.html { redirect_to port_of_discharges_url, notice: 'Port of discharge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_port_of_discharge
      @port_of_discharge = PortOfDischarge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def port_of_discharge_params
      params.require(:port_of_discharge).permit()
    end
end
