class PatientsController < ApplicationController
  def index
    @patients = Patient.page(params[:page]).per(10)

    render("patient_templates/index.html.erb")
  end

  def show
    @patient = Patient.find(params.fetch("id_to_display"))

    render("patient_templates/show.html.erb")
  end
end
