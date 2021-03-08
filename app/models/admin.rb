class Admin < ApplicationRecord
    has_many :products, dependent: :delete_all
    has_many :orders, dependent: :delete_all

    has_secure_password
end
