class AdminSerializer < ActiveModel::Serializer
    attributes :id, :email, :user_type
end