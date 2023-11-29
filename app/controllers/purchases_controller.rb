class PurchasesController < ApplicationController
  before_action :set_purchase, only: %i[show edit update destroy]

  def show; end

  def new
    @group = Group.find(params[:group_id])
    @purchase = @group.purchases.build
  end

  def edit; end

  def create
    @group = Group.find(params[:group_id])
    @purchase = @group.purchases.build(purchase_params)
    @purchase.author = current_user

    if @purchase.save
      redirect_to group_url(@group), notice: 'Purchase was successfully created.'
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
    params.require(:purchase).permit(:name, :amount, :group_id)
  end
end
