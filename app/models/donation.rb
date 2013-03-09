# -*- encoding : utf-8 -*-
class Donation < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  belongs_to :donor


  def donor_search
      search_donortools.clear # remove the old values
      ids.split(',').select(&:present?).map do |donor_id|
        search_donortools.build donor_id: donor_id
      end
  end

  def donor_name
    donor.name if donor else donor_search
  end

end
