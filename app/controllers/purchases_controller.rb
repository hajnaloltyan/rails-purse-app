class PurchasesController < ApplicationController
  def show
    @group = Group.find(params[:group_id])
    @purchase = @group.purchases.find_by(id: params[:id])

    return unless @purchase.nil?

    redirect_to group_path, alert: 'Purchase does not exist.'
  end

  def new
    @group = Group.find(params[:group_id])
    @purchase = @group.purchases.build
  end

  def create
    @group = Group.find(params[:group_id])
    @purchase = @group.purchases.build(purchase_params)
    @purchase.author = current_user

    if @purchase.save
      redirect_to [@group, @purchase], notice: 'Purchase was successfully created.'
    else
      render :new
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:name, :amount, :group_id)
  end
end
