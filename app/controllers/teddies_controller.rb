class TeddiesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @teddies = Teddy.all
    @order_item = current_order.order_items.new
  end

  def show
    @teddy = Teddy.find(params[:id])
  end

end

