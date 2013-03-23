class DonationSerializer < ActiveModel::Serializer
  attributes :id, :donor_id, :weight
end
