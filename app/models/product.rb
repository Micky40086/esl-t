class Product < ApplicationRecord
  has_rich_text :desc

  enum status: { pending: 0, enable: 1 , disable: 2 }

  has_many :product_images, inverse_of: :product
  accepts_nested_attributes_for :product_images, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :stock, numericality: { greater_than_or_equal_to: 0 }
end
