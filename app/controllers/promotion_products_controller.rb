class PromotionProductsController < ApplicationController
  before_action :set_promotion_product, only: %i[ show edit update destroy ]

  # GET /promotion_products or /promotion_products.json
  def index
    @promotion_products = PromotionProduct.all
  end

  # GET /promotion_products/1 or /promotion_products/1.json
  def show
  end

  # GET /promotion_products/new
  def new
    @promotion_product = PromotionProduct.new
  end

  # GET /promotion_products/1/edit
  def edit
  end

  # POST /promotion_products or /promotion_products.json
  def create
    @promotion_product = PromotionProduct.new(promotion_product_params)

    respond_to do |format|
      if @promotion_product.save
        format.html { redirect_to @promotion_product, notice: "Promotion product was successfully created." }
        format.json { render :show, status: :created, location: @promotion_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @promotion_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promotion_products/1 or /promotion_products/1.json
  def update
    respond_to do |format|
      if @promotion_product.update(promotion_product_params)
        format.html { redirect_to @promotion_product, notice: "Promotion product was successfully updated." }
        format.json { render :show, status: :ok, location: @promotion_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @promotion_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promotion_products/1 or /promotion_products/1.json
  def destroy
    @promotion_product.destroy!

    respond_to do |format|
      format.html { redirect_to promotion_products_path, status: :see_other, notice: "Promotion product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotion_product
      @promotion_product = PromotionProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def promotion_product_params
      params.require(:promotion_product).permit(:promotion_id, :product_id)
    end
end
