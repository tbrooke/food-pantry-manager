# -*- encoding : utf-8 -*-
class DonorsController < ApplicationController

  acts_as_restful_json



  private

  def allowable
    [

     :first_name, :last_name, :tool_id
    ]
  end

  def safe_params
    params.require(:donor).permit(*allowable)
  end

end

