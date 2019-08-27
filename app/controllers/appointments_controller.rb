class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all

    render("appointment_templates/index.html.erb")
  end

  def show
    @charge = Charge.new
    @appointment = Appointment.find(params.fetch("id_to_display"))

    render("appointment_templates/show.html.erb")
  end

  def new_form
    @appointment = Appointment.new

    render("appointment_templates/new_form.html.erb")
  end

  def create_row
    @appointment = Appointment.new

    @appointment.office_id = params.fetch("office_id")
    @appointment.patient_id = params.fetch("patient_id")
    @appointment.professional_id = params.fetch("professional_id")
    @appointment.charge_id = params.fetch("charge_id")
    @appointment.notes = params.fetch("notes")
    @appointment.time_slot = params.fetch("time_slot")

    if @appointment.valid?
      @appointment.save

      redirect_back(:fallback_location => "/appointments", :notice => "Appointment created successfully.")
    else
      render("appointment_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @appointment = Appointment.find(params.fetch("prefill_with_id"))

    render("appointment_templates/edit_form.html.erb")
  end

  def update_row
    @appointment = Appointment.find(params.fetch("id_to_modify"))

    @appointment.office_id = params.fetch("office_id")
    @appointment.patient_id = params.fetch("patient_id")
    @appointment.professional_id = params.fetch("professional_id")
    @appointment.charge_id = params.fetch("charge_id")
    @appointment.notes = params.fetch("notes")
    @appointment.time_slot = params.fetch("time_slot")

    if @appointment.valid?
      @appointment.save

      redirect_to("/appointments/#{@appointment.id}", :notice => "Appointment updated successfully.")
    else
      render("appointment_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_professional
    @appointment = Appointment.find(params.fetch("id_to_remove"))

    @appointment.destroy

    redirect_to("/professionals/#{@appointment.professional_id}", notice: "Appointment deleted successfully.")
  end

  def destroy_row_from_office
    @appointment = Appointment.find(params.fetch("id_to_remove"))

    @appointment.destroy

    redirect_to("/offices/#{@appointment.office_id}", notice: "Appointment deleted successfully.")
  end

  def destroy_row_from_patient
    @appointment = Appointment.find(params.fetch("id_to_remove"))

    @appointment.destroy

    redirect_to("/patients/#{@appointment.patient_id}", notice: "Appointment deleted successfully.")
  end

  def destroy_row
    @appointment = Appointment.find(params.fetch("id_to_remove"))

    @appointment.destroy

    redirect_to("/appointments", :notice => "Appointment deleted successfully.")
  end
end
