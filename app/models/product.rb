class Product < ApplicationRecord
    has_many :collections, through: :product_collections, dependent: :delete_all
    has_many :reviews, dependent: :delete_all
    belongs_to :admin
end
