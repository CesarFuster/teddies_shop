class AddTotalPriceToOrderItems < ActiveRecord::Migration[5.1]
  def change
    add_monetize :order_items, :total_price, currency: { present: false }
  end
end
