class AddTotalToOrder < ActiveRecord::Migration[5.1]
  def change
    add_monetize :orders, :total, currency: { present: false }
  end
end
