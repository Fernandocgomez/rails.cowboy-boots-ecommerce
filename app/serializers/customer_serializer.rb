class CustomerSerializer < ActiveModel::Serializer
    attributes :id, :email, :user_type, :first_name, :last_name, :address_1, :address_2, :city, :country, :state, :zip_code, :phone, :email, :creation_datetime
end