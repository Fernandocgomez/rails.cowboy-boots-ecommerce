class Product < ApplicationRecord
    has_many :product_collections
    has_many :collections, through: :product_collections, dependent: :delete_all
    has_many :reviews, dependent: :delete_all
    belongs_to :admin

    validates :name, {
        uniqueness: true,
        length: { within: 15..40 },
        format: { with: /[a-zA-Z]/, message: "only letters are allowed" },
        presence: true
    }

    validates :image, {
        uniqueness: true, 
        format: { with: /\A(https:\/\/)?(www.)?[a-z0-9]+\.[a-z]+(\/[a-zA-Z0-9#]+\/?)*\z/, message: "not valid url" },
        presence: true
    }

    validates :price, {
        numericality: { only_float: true },
        presence: true
    }

    validates :size, {
        presence: true
    }
end
