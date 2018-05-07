class AddTaxToOrder < ActiveRecord::Migration[5.1]
  def change
    add_monetize :orders, :tax, currency: { present: false }
  end
end
