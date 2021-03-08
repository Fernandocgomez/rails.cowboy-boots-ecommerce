class Order < ApplicationRecord
    has_many :order_products
    has_many :products, through: :order_products, dependent: :delete_all
    belongs_to :customer
    belongs_to :admin
end
