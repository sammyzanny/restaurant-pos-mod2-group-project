class ModificationsController < ApplicationController

  def new
    @modification = Modification.new
    @orders = Order.all
  end

  def edit
    @modification = Modification.find(params[:id])
  end

  def create
    @modification = Modification.new(modification_params)
    @modification.save
    redirect_to order_path(@modification.order_id)
  end

  private

  def modification_params
    params.require(:modification).permit(:note, :price, :order_id)
  end
end
