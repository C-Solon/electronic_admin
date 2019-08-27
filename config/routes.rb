Rails.application.routes.draw do
  # Routes for the Specialty resource:

  # CREATE
  get("/specialties/new", { :controller => "specialties", :action => "new_form" })
  post("/create_specialty", { :controller => "specialties", :action => "create_row" })

  # READ
  get("/specialties", { :controller => "specialties", :action => "index" })
  get("/specialties/:id_to_display", { :controller => "specialties", :action => "show" })

  # UPDATE
  get("/specialties/:prefill_with_id/edit", { :controller => "specialties", :action => "edit_form" })
  post("/update_specialty/:id_to_modify", { :controller => "specialties", :action => "update_row" })

  # DELETE
  get("/delete_specialty/:id_to_remove", { :controller => "specialties", :action => "destroy_row" })

  #------------------------------

  devise_for :offices
  # Routes for the Office resource:

  # READ
  get("/offices", { :controller => "offices", :action => "index" })
  get("/offices/:id_to_display", { :controller => "offices", :action => "show" })

  #------------------------------

  devise_for :professionals
  # Routes for the Professional resource:

  # READ
  get("/professionals", { :controller => "professionals", :action => "index" })
  get("/professionals/:id_to_display", { :controller => "professionals", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
