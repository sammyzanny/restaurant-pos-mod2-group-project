class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    @order = Order.find_by(id: params[:id])
    @check = @order.check
    @order.destroy
    redirect_to check_path(@check)
  end
end
