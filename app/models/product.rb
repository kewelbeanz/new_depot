class Product < ActiveRecord::Base
<<<<<<< HEAD
  has_many :line_items
  has_many :orders, through: :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates:title, uniqueness: true
  validates :image_url, allow_blank: true, format: {with: %r{\.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG, or PNG image.'}
  
  def self.latest
    Product.order(:updated_at).last
  end
=======
  attr_accessible :description, :image_url, :price, :title
  
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :format => {
    :with => %r{\.(gif|jpg|png)$}i,
    :message => "must be a URL for GIF, JPG, or PNG image"
  }
  
  default_scope :order => 'title'
  
  has_many :line_items
  has_many :orders, :through => :line_items
  
  before_destroy :ensure_not_referenced_by_any_line_item
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
  
  private
  
  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
<<<<<<< HEAD
      errors.add(:base, 'Line Items present')
=======
      errors.add(:base, 'Line Items Present')
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
      return false
    end
  end
end
