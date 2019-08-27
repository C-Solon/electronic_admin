class PatientsController < ApplicationController
  def index
    @patients = Patient.all

    render("patient_templates/index.html.erb")
  end

  def show
    @patient = Patient.find(params.fetch("id_to_display"))

    render("patient_templates/show.html.erb")
  end
end
