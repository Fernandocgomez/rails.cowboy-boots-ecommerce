class Collection < ApplicationRecord
    has_many :product_collections
    has_many :products, through: :product_collections, dependent: :delete_all
    belongs_to :admin
end
