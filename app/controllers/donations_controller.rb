# -*- encoding : utf-8 -*-
class DonationsController < ApplicationController


  # GET /donations
  # GET /donations.json
  def index
    @donations = Donation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @donations }
    end
  end

  # GET /donations/1
  # GET /donations/1.json
  def show
    @donation = Donation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @donation }
    end
  end

  # GET /donations/new
  # GET /donations/new.json
  def new
    @donation = Donation.new
    @donation.donors.build
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @donation }
    end
  end

  # GET /donations/1/edit
  def edit
    @donation = Donation.find(params[:id])
  end

  # POST /donations
  # POST /donations.json


  def update
    @donation = Donation.find(params[:id])

    if @donation.update_attributes(safe_params)
      redirect_to @donation, notice: t('donations.controller.update.success')
    else
      render :edit
    end
  end


  def create
    @donation = Donation.new(safe_params)

    respond_to do |format|
      if @donation.save
        format.html { redirect_to @donation, notice: 'donation was successfully created.' }
        format.json { render json: @donation, status: :created, location: @donation }
      else
        format.html { render action: "new" }
        format.json { render json: @donation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @donation = Donation.find(params[:id])

    if  @donation.destroy
    else
      flash[:error] = t('users.controller.destroy.prevent_self_destroy')
    end
    redirect_to donations_url

  end


  private

  def allowable
    [
        :donor_id, :weight
    ]
  end

  def safe_params
    params.require(:donation).permit(*allowable)
  end

end



#
#  Old Controller
#
#  expose(:donation)
#  expose(:donations)
#
#  def create
#    if donation.save
#      redirect_to donations_path, notice: "Donation was successfully created."
#    else
#      render "new"
#    end
#  end
#
#  def update
#    if donation.save
#      redirect_to donations_path, notice: "Donation was successfully updated."
#    else
#      render "edit"
#    end
#  end
#
#  def destroy
#    donation.destroy
#
#    redirect_to donations_path, notice: "Donation deleted."
#  end
#
#  def show
#    donation = Donation.find(params[:id])
#    respond_to do |format|
#      format.pdf do
#        pdf = DonationPdf.new(donation)
#        send_data pdf.render, filename: "donation_#{donation.id}.pdf",
#                              type: "application/pdf",
#                              disposition: "inline"
#      end
#    end
#  end
#
#
#
#  private
#
#  def allowable
#    [
#      :weight, :donor_id
#    ]
#  end
#
#  def donation_params
#    params.require(:donation).permit(*allowable)
#  end
#end
