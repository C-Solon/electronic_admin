class SpecialtiesController < ApplicationController
  def index
    @q = Specialty.ransack(params[:q])
    @specialties = @q.result(:distinct => true).includes(:specializations).page(params[:page]).per(10)

    render("specialty_templates/index.html.erb")
  end

  def show
    @specialization = Specialization.new
    @specialty = Specialty.find(params.fetch("id_to_display"))

    render("specialty_templates/show.html.erb")
  end

  def new_form
    @specialty = Specialty.new

    render("specialty_templates/new_form.html.erb")
  end

  def create_row
    @specialty = Specialty.new


    if @specialty.valid?
      @specialty.save

      redirect_back(:fallback_location => "/specialties", :notice => "Specialty created successfully.")
    else
      render("specialty_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @specialty = Specialty.find(params.fetch("prefill_with_id"))

    render("specialty_templates/edit_form.html.erb")
  end

  def update_row
    @specialty = Specialty.find(params.fetch("id_to_modify"))


    if @specialty.valid?
      @specialty.save

      redirect_to("/specialties/#{@specialty.id}", :notice => "Specialty updated successfully.")
    else
      render("specialty_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @specialty = Specialty.find(params.fetch("id_to_remove"))

    @specialty.destroy

    redirect_to("/specialties", :notice => "Specialty deleted successfully.")
  end
end
