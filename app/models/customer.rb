class Customer < ApplicationRecord
    has_one :cart, dependent: :delete_all
    has_one :cookie, dependent: :delete_all
    has_many :orders, dependent: :delete_all
    has_many :reviews, dependent: :delete_all
end