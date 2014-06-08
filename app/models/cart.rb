class Cart < ActiveRecord::Base
<<<<<<< HEAD
  has_many :line_items, dependent: :destroy
  
  def add_product(product_id)
    current_item = line_items.find_by(product_id: product_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product_id)
=======
   attr_accessible :quantity
  has_many :line_items, :dependent => :destroy
  
  def add_product(product_id)
    current_item = line_items.find_by_product_id(product_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(:product_id => product_id)
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
    end
    current_item
  end
  
  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end
<<<<<<< HEAD
=======
  
  def total_items
    line_items.sum(:quantity)
  end
  
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
end
