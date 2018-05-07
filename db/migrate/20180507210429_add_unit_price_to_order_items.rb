class AddUnitPriceToOrderItems < ActiveRecord::Migration[5.1]
  def change
    add_monetize :order_items, :unit_price, currency: { present: false }
  end
end
