class ModificationsController < ApplicationController

  def new
    @modification = Modification.new
    @orders = Order.all
    @mod_prices = [0.00, 0.50, 1.00, 1.50, 2.00, 2.50, 3.00, 4.00, 5.00].map {|num| '%.2f' % num}

  end

  def edit
    @modification = Modification.find(params[:id])
  end

  def create
    @modification = Modification.new(modification_params)
    @modification.save
    redirect_to check_path(@modification.check)
  end

  def destroy
    @mod = Modification.find_by(id: params[:id])
    @check = @mod.order.check
    @mod.destroy
    # byebug
    redirect_to check_path(@check)
  end

  private

  def modification_params
    params.require(:modification).permit(:note, :price, :order_id)
  end
end
