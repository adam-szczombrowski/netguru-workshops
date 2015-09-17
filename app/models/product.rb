class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews
  validates_presence_of :title, :description, :price

  validates_format_of :price, :with => /\A\d+(?:\.\d{0,2})?\z/ , :on => :create

  def average_rating
    self.reviews.average(:rating)
  end
end
