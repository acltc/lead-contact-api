class LeadSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone, :email, :city, :state, :zip
end
