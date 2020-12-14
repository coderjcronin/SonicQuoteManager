class ProductLineItemsController < ApplicationController
  before_action :set_product_line_item, only: [:show, :edit, :update, :destroy]

  # GET /product_line_items
  # GET /product_line_items.json
  def index
    @product_line_items = ProductLineItem.all
  end

  # GET /product_line_items/1
  # GET /product_line_items/1.json
  def show
  end

  # GET /product_line_items/new
  def new
    @product_line_item = ProductLineItem.new
  end

  # GET /product_line_items/1/edit
  def edit
  end

  # POST /product_line_items
  # POST /product_line_items.json
  def create
    @product_line_item = ProductLineItem.new(product_line_item_params)

    respond_to do |format|
      if @product_line_item.save
        format.html { redirect_to @product_line_item, notice: 'Product line item was successfully created.' }
        format.json { render :show, status: :created, location: @product_line_item }
      else
        format.html { render :new }
        format.json { render json: @product_line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_line_items/1
  # PATCH/PUT /product_line_items/1.json
  def update
    respond_to do |format|
      if @product_line_item.update(product_line_item_params)
        format.html { redirect_to @product_line_item, notice: 'Product line item was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_line_item }
      else
        format.html { render :edit }
        format.json { render json: @product_line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_line_items/1
  # DELETE /product_line_items/1.json
  def destroy
    @product_line_item.destroy
    respond_to do |format|
      format.html { redirect_to product_line_items_url, notice: 'Product line item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_line_item
      @product_line_item = ProductLineItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_line_item_params
      params.require(:product_line_item).permit(:quote_id, :part_id, :labor_units, :unit_price, :full_service_price, :quanity)
    end
end
