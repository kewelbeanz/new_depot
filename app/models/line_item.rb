class LineItem < ActiveRecord::Base
<<<<<<< HEAD
  belongs_to :order
  belongs_to :product
  belongs_to :cart
=======
  attr_accessible :cart_id, :product_id, :product, :quantity
  belongs_to :cart
  belongs_to :product
  belongs_to :order
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
  
  def total_price
    product.price * quantity
  end
<<<<<<< HEAD
=======
  
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
end
