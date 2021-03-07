class Collection < ApplicationRecord
    has_many :products, through: :product_collections, dependent: :delete_all
end
