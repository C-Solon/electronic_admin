class OfficesController < ApplicationController
  def index
    @offices = Office.all

    render("office_templates/index.html.erb")
  end

  def show
    @office = Office.find(params.fetch("id_to_display"))

    render("office_templates/show.html.erb")
  end
end
