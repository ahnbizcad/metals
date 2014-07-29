class TermOfPricesController < ApplicationController
  before_action :set_term_of_price, only: [:show, :edit, :update, :destroy]

  # GET /term_of_prices
  # GET /term_of_prices.json
  def index
    @term_of_prices = TermOfPrice.all.reverse_order
    @count = TermOfPrice.count
  end

  # GET /term_of_prices/1
  # GET /term_of_prices/1.json
  def show
  end

  # GET /term_of_prices/new
  def new
    @term_of_price = TermOfPrice.new
  end

  # GET /term_of_prices/1/edit
  def edit
  end

  # POST /term_of_prices
  # POST /term_of_prices.json
  def create
    @term_of_price = TermOfPrice.new(term_of_price_params)

    respond_to do |format|
      if @term_of_price.save
        format.html { redirect_to term_of_prices_path, notice: 'Term of price was successfully created.' }
        format.json { render :show, status: :created, location: @term_of_price }
      else
        format.html { render :new }
        format.json { render json: @term_of_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /term_of_prices/1
  # PATCH/PUT /term_of_prices/1.json
  def update
    respond_to do |format|
      if @term_of_price.update(term_of_price_params)
        format.html { redirect_to term_of_prices_path, notice: 'Term of price was successfully updated.' }
        format.json { render :show, status: :ok, location: @term_of_price }
      else
        format.html { render :edit }
        format.json { render json: @term_of_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /term_of_prices/1
  # DELETE /term_of_prices/1.json
  def destroy
    @term_of_price.destroy
    respond_to do |format|
      format.html { redirect_to term_of_prices_url, notice: 'Term of price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_term_of_price
      @term_of_price = TermOfPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def term_of_price_params
      params.require(:term_of_price).permit(:term, :text, :date)
    end

end
