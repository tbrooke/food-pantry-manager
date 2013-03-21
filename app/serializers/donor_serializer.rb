class DonorSerializer < ActiveModel::Serializer
  attributes :id, :tools_id, :first_name, :last_name
end
