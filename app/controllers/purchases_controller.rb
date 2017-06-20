class PurchasesController < ApplicationController
  def show
    @purchase = Purchase.find_by_uuid(params[:id])
    # Con este cargo precio e id desde la bd
    @product = Product.find(@purchase.product_id)
  end
end
