class SpotsController < ApplicationController
  def index
    @spots = Spot.all

    render("spots/index.html.erb")
  end

  def show
    @spot = Spot.find(params[:id])

    render("spots/show.html.erb")
  end

  def new
    @spot = Spot.new

    render("spots/new.html.erb")
  end

  def create
    @spot = Spot.new

    @spot.name = params[:name]
    @spot.category = params[:category]
    @spot.address = params[:address]
    @spot.latitude = params[:latitude]
    @spot.longitude = params[:longitude]
    @spot.photo = params[:photo]
    @spot.neighborhood = params[:neighborhood]
    @spot.city = params[:city]
    @spot.phone_number = params[:phone_number]

    save_status = @spot.save

    if save_status == true
      redirect_to("/spots/#{@spot.id}", :notice => "Spot created successfully.")
    else
      render("spots/new.html.erb")
    end
  end

  def edit
    @spot = Spot.find(params[:id])

    render("spots/edit.html.erb")
  end

  def update
    @spot = Spot.find(params[:id])

    @spot.name = params[:name]
    @spot.category = params[:category]
    @spot.address = params[:address]
    @spot.latitude = params[:latitude]
    @spot.longitude = params[:longitude]
    @spot.photo = params[:photo]
    @spot.neighborhood = params[:neighborhood]
    @spot.city = params[:city]
    @spot.phone_number = params[:phone_number]

    save_status = @spot.save

    if save_status == true
      redirect_to("/spots/#{@spot.id}", :notice => "Spot updated successfully.")
    else
      render("spots/edit.html.erb")
    end
  end

  def destroy
    @spot = Spot.find(params[:id])

    @spot.destroy

    if URI(request.referer).path == "/spots/#{@spot.id}"
      redirect_to("/", :notice => "Spot deleted.")
    else
      redirect_to(:back, :notice => "Spot deleted.")
    end
  end
end
