class ChargesController < ApplicationController
  def index
    @charges = Charge.all

    render("charge_templates/index.html.erb")
  end

  def show
    @charge = Charge.find(params.fetch("id_to_display"))

    render("charge_templates/show.html.erb")
  end

  def new_form
    @charge = Charge.new

    render("charge_templates/new_form.html.erb")
  end

  def create_row
    @charge = Charge.new

    @charge.amount = params.fetch("amount")
    @charge.paid = params.fetch("paid")
    @charge.appointment_id = params.fetch("appointment_id")
    @charge.treatment_id = params.fetch("treatment_id")

    if @charge.valid?
      @charge.save

      redirect_back(:fallback_location => "/charges", :notice => "Charge created successfully.")
    else
      render("charge_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @charge = Charge.find(params.fetch("prefill_with_id"))

    render("charge_templates/edit_form.html.erb")
  end

  def update_row
    @charge = Charge.find(params.fetch("id_to_modify"))

    @charge.amount = params.fetch("amount")
    @charge.paid = params.fetch("paid")
    @charge.appointment_id = params.fetch("appointment_id")
    @charge.treatment_id = params.fetch("treatment_id")

    if @charge.valid?
      @charge.save

      redirect_to("/charges/#{@charge.id}", :notice => "Charge updated successfully.")
    else
      render("charge_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_appointment
    @charge = Charge.find(params.fetch("id_to_remove"))

    @charge.destroy

    redirect_to("/appointments/#{@charge.appointment_id}", notice: "Charge deleted successfully.")
  end

  def destroy_row_from_treatment
    @charge = Charge.find(params.fetch("id_to_remove"))

    @charge.destroy

    redirect_to("/treatments/#{@charge.treatment_id}", notice: "Charge deleted successfully.")
  end

  def destroy_row
    @charge = Charge.find(params.fetch("id_to_remove"))

    @charge.destroy

    redirect_to("/charges", :notice => "Charge deleted successfully.")
  end
end
