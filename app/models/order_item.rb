class OrderItem < ActiveRecord::Base
  monetize :price_cents

  belongs_to :teddy
  belongs_to :order
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :teddy_present
  validate :order_present
  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      teddy.price
    end
  end

  def total_price
    unit_price * quantity
  end

  private
  def teddy_present
    if teddy.nil?
      errors.add(:teddy, "is not valid or is not active.")
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, "is not a valid order.")
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity * self[:unit_price]
  end

end

