class TreatmentsController < ApplicationController
  def index
    @q = Treatment.ransack(params[:q])
    @treatments = @q.result(:distinct => true).includes(:charges).page(params[:page]).per(10)

    render("treatment_templates/index.html.erb")
  end

  def show
    @charge = Charge.new
    @treatment = Treatment.find(params.fetch("id_to_display"))

    render("treatment_templates/show.html.erb")
  end

  def new_form
    @treatment = Treatment.new

    render("treatment_templates/new_form.html.erb")
  end

  def create_row
    @treatment = Treatment.new

    @treatment.name = params.fetch("name")

    if @treatment.valid?
      @treatment.save

      redirect_back(:fallback_location => "/treatments", :notice => "Treatment created successfully.")
    else
      render("treatment_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @treatment = Treatment.find(params.fetch("prefill_with_id"))

    render("treatment_templates/edit_form.html.erb")
  end

  def update_row
    @treatment = Treatment.find(params.fetch("id_to_modify"))

    @treatment.name = params.fetch("name")

    if @treatment.valid?
      @treatment.save

      redirect_to("/treatments/#{@treatment.id}", :notice => "Treatment updated successfully.")
    else
      render("treatment_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @treatment = Treatment.find(params.fetch("id_to_remove"))

    @treatment.destroy

    redirect_to("/treatments", :notice => "Treatment deleted successfully.")
  end
end
