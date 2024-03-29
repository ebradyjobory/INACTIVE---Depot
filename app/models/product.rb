class Product < ActiveRecord::Base
	default_scope :order => 'title'
  attr_accessible :description, :image_url, :price, :title
  validates :title, :description, :image_url, :price, :presence => true
  validates :title, :uniqueness => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
 
end
