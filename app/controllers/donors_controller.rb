# -*- encoding : utf-8 -*-
class DonorsController < ApplicationController


  # GET /donors
  # GET /donors.json
  def index
    @donors = Donor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @donors }
    end
  end

  # GET /donors/1
  # GET /donors/1.json
  def show
    @donor = Donor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @donor }
    end
  end

  # GET /donors/new
  # GET /donors/new.json
  def new
    @donor = Donor.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @donor }
    end
  end

  # GET /donors/1/edit
  def edit
    @donor = Donor.find(params[:id])
  end

  # POST /donors
  # POST /donors.json


  def update
    @donor = Donor.find(params[:id])

    if @donor.update_attributes(safe_params)
      redirect_to @donor, notice: t('donors.controller.update.success')
    else
      render :edit
    end
  end


  def create
    @donor = Donor.new(safe_params)

    respond_to do |format|
      if @donor.save
        format.html { redirect_to @donor, notice: 'household was successfully created.' }
        format.json { render json: @donor, status: :created, location: @donor }
      else
        format.html { render action: "new" }
        format.json { render json: @donor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @donor = Donor.find(params[:id])

    if  @donor.destroy
    else
      flash[:error] = t('users.controller.destroy.prevent_self_destroy')
    end
    redirect_to donors_url

  end


  private

  def allowable
    [
      :tools_id, :first_name, :last_name

    ]
  end

  def safe_params
    params.require(:donor).permit(*allowable)
  end

end




# Old Controllers
#
#  expose(:donor)
#  expose(:donors)
#
#  def create
#    if donor.save
#      redirect_to donors_path, notice: 'Donor was successfully created.'
#    else
#      render action: "new"
#    end
#  end
#
#  def update
#    if donor.save
#      redirect_to donors_path, notice: 'Donor was successfully updated.'
#    else
#      render action: "edit"
#    end
#  end
#
#  def destroy
#    donor.destroy
#
#    redirect_to donors_path
#  end
#
#  private
#
#  def allowable
#    [
#      :name, :first_name, :last_name, :tool_id
#    ]
#  end
#
#  def donor_params
#    params.require(:donor).permit(*allowable)
#  end
#end
