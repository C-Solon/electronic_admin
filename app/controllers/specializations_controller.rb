class SpecializationsController < ApplicationController
  def index
    @q = Specialization.ransack(params[:q])
    @specializations = @q.result(:distinct => true).includes(:professional, :specialty).page(params[:page]).per(10)

    render("specialization_templates/index.html.erb")
  end

  def show
    @specialization = Specialization.find(params.fetch("id_to_display"))

    render("specialization_templates/show.html.erb")
  end

  def new_form
    @specialization = Specialization.new

    render("specialization_templates/new_form.html.erb")
  end

  def create_row
    @specialization = Specialization.new

    @specialization.professional_id = params.fetch("professional_id")
    @specialization.specialty_id = params.fetch("specialty_id")

    if @specialization.valid?
      @specialization.save

      redirect_back(:fallback_location => "/specializations", :notice => "Specialization created successfully.")
    else
      render("specialization_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_specialty
    @specialization = Specialization.new

    @specialization.professional_id = params.fetch("professional_id")
    @specialization.specialty_id = params.fetch("specialty_id")

    if @specialization.valid?
      @specialization.save

      redirect_to("/specialties/#{@specialization.specialty_id}", notice: "Specialization created successfully.")
    else
      render("specialization_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @specialization = Specialization.find(params.fetch("prefill_with_id"))

    render("specialization_templates/edit_form.html.erb")
  end

  def update_row
    @specialization = Specialization.find(params.fetch("id_to_modify"))

    @specialization.professional_id = params.fetch("professional_id")
    @specialization.specialty_id = params.fetch("specialty_id")

    if @specialization.valid?
      @specialization.save

      redirect_to("/specializations/#{@specialization.id}", :notice => "Specialization updated successfully.")
    else
      render("specialization_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_professional
    @specialization = Specialization.find(params.fetch("id_to_remove"))

    @specialization.destroy

    redirect_to("/professionals/#{@specialization.professional_id}", notice: "Specialization deleted successfully.")
  end

  def destroy_row_from_specialty
    @specialization = Specialization.find(params.fetch("id_to_remove"))

    @specialization.destroy

    redirect_to("/specialties/#{@specialization.specialty_id}", notice: "Specialization deleted successfully.")
  end

  def destroy_row
    @specialization = Specialization.find(params.fetch("id_to_remove"))

    @specialization.destroy

    redirect_to("/specializations", :notice => "Specialization deleted successfully.")
  end
end
