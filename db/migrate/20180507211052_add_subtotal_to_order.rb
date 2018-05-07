class AddSubtotalToOrder < ActiveRecord::Migration[5.1]
  def change
    add_monetize :orders, :subtotal, currency: { present: false }
  end
end
