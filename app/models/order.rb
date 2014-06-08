class Order < ActiveRecord::Base
<<<<<<< HEAD
  has_many :line_items, dependent: :destroy
  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: PAYMENT_TYPES
  
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id =nil
      line_items << item
    end
  end
=======
  attr_accessible :address, :email, :name, :pay_type
  
  PAYMENT_TYPES = [ "Check", "Credit Card", "Purchase Order" ]
  
  validates :name, :address, :email, :pay_type, :presence => true
  validates :pay_type, :inclusion => PAYMENT_TYPES
  
  has_many :line_items, :dependent => :destroy
  
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
  
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
end
