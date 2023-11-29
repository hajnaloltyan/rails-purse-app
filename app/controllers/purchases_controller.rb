class PurchasesController < ApplicationController
  before_action :set_purchase, only: %i[show edit update destroy]

  def index
    @purchases = Purchase.all
  end

  def show; end

  def new
    @purchase = Purchase.new
  end

  def edit; end

  def create
    @purchase = Purchase.new(purchase_params)

    if @purchase.save
      redirect_to purchase_url(@purchase), notice: 'Purchase was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @purchase.update(purchase_params)
      redirect_to purchase_url(@purchase), notice: 'Purchase was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @purchase.destroy!

    redirect_to purchases_url, notice: 'Purchase was successfully deleted.'
  end

  private

  def set_purchase
    @purchase = Purchase.include(:users).find(params[:id])
  end

  def purchase_params
    params.fetch(:purchase, {})
  end
end
