class Customer < ApplicationRecord
    has_one :cart, dependent: :delete
    has_one :cookie, dependent: :delete
    has_many :orders, dependent: :delete_all
    has_many :reviews, dependent: :delete_all

    has_secure_password
end