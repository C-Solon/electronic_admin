class OfficesController < ApplicationController
  def index
    @offices = Office.page(params[:page]).per(10)
    @location_hash = Gmaps4rails.build_markers(@offices.where.not(:address_latitude => nil)) do |office, marker|
      marker.lat office.address_latitude
      marker.lng office.address_longitude
      marker.infowindow "<h5><a href='/offices/#{office.id}'>#{office.name}</a></h5><small>#{office.address_formatted_address}</small>"
    end

    render("office_templates/index.html.erb")
  end

  def show
    @office = Office.find(params.fetch("id_to_display"))

    render("office_templates/show.html.erb")
  end
end
