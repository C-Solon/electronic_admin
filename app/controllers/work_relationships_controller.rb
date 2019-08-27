class WorkRelationshipsController < ApplicationController
  def index
    @work_relationships = WorkRelationship.all

    render("work_relationship_templates/index.html.erb")
  end

  def show
    @work_relationship = WorkRelationship.find(params.fetch("id_to_display"))

    render("work_relationship_templates/show.html.erb")
  end

  def new_form
    @work_relationship = WorkRelationship.new

    render("work_relationship_templates/new_form.html.erb")
  end

  def create_row
    @work_relationship = WorkRelationship.new

    @work_relationship.professional_id = params.fetch("professional_id")
    @work_relationship.office_id = params.fetch("office_id")

    if @work_relationship.valid?
      @work_relationship.save

      redirect_back(:fallback_location => "/work_relationships", :notice => "Work relationship created successfully.")
    else
      render("work_relationship_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @work_relationship = WorkRelationship.find(params.fetch("prefill_with_id"))

    render("work_relationship_templates/edit_form.html.erb")
  end

  def update_row
    @work_relationship = WorkRelationship.find(params.fetch("id_to_modify"))

    @work_relationship.professional_id = params.fetch("professional_id")
    @work_relationship.office_id = params.fetch("office_id")

    if @work_relationship.valid?
      @work_relationship.save

      redirect_to("/work_relationships/#{@work_relationship.id}", :notice => "Work relationship updated successfully.")
    else
      render("work_relationship_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_professional
    @work_relationship = WorkRelationship.find(params.fetch("id_to_remove"))

    @work_relationship.destroy

    redirect_to("/professionals/#{@work_relationship.professional_id}", notice: "WorkRelationship deleted successfully.")
  end

  def destroy_row_from_office
    @work_relationship = WorkRelationship.find(params.fetch("id_to_remove"))

    @work_relationship.destroy

    redirect_to("/offices/#{@work_relationship.office_id}", notice: "WorkRelationship deleted successfully.")
  end

  def destroy_row
    @work_relationship = WorkRelationship.find(params.fetch("id_to_remove"))

    @work_relationship.destroy

    redirect_to("/work_relationships", :notice => "Work relationship deleted successfully.")
  end
end
