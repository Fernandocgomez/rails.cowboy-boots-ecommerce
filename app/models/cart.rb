class Cart < ApplicationRecord
    has_many :cart_products
    has_many :products, through: :cart_products, dependent: :delete_all
    belongs_to :customer
end
