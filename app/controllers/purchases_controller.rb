class PurchasesController < ApplicationController
  def new
    @purchase = Purchase.new()
  end

  def index
    @purchases = Purchase.all
  end
end
