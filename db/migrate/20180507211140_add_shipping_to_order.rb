class AddShippingToOrder < ActiveRecord::Migration[5.1]
  def change
    add_monetize :orders, :shipping, currency: { present: false }
  end
end
