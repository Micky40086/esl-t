class Product < ApplicationRecord
  has_many :product_images, inverse_of: :product
  accepts_nested_attributes_for :product_images, reject_if: :all_blank, allow_destroy: true

  enum status: { pending: 0, enable: 1 , disable: 2 }
end
