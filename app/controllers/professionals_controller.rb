class ProfessionalsController < ApplicationController
  def index
    @professionals = Professional.page(params[:page]).per(10)

    render("professional_templates/index.html.erb")
  end

  def show
    @professional = Professional.find(params.fetch("id_to_display"))

    render("professional_templates/show.html.erb")
  end
end
