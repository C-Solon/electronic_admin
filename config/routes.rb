Rails.application.routes.draw do
  # Routes for the Charge resource:

  # CREATE
  get("/charges/new", { :controller => "charges", :action => "new_form" })
  post("/create_charge", { :controller => "charges", :action => "create_row" })

  # READ
  get("/charges", { :controller => "charges", :action => "index" })
  get("/charges/:id_to_display", { :controller => "charges", :action => "show" })

  # UPDATE
  get("/charges/:prefill_with_id/edit", { :controller => "charges", :action => "edit_form" })
  post("/update_charge/:id_to_modify", { :controller => "charges", :action => "update_row" })

  # DELETE
  get("/delete_charge/:id_to_remove", { :controller => "charges", :action => "destroy_row" })

  #------------------------------

  # Routes for the Appointment resource:

  # CREATE
  get("/appointments/new", { :controller => "appointments", :action => "new_form" })
  post("/create_appointment", { :controller => "appointments", :action => "create_row" })

  # READ
  get("/appointments", { :controller => "appointments", :action => "index" })
  get("/appointments/:id_to_display", { :controller => "appointments", :action => "show" })

  # UPDATE
  get("/appointments/:prefill_with_id/edit", { :controller => "appointments", :action => "edit_form" })
  post("/update_appointment/:id_to_modify", { :controller => "appointments", :action => "update_row" })

  # DELETE
  get("/delete_appointment/:id_to_remove", { :controller => "appointments", :action => "destroy_row" })

  #------------------------------

  devise_for :patients
  # Routes for the Patient resource:

  # READ
  get("/patients", { :controller => "patients", :action => "index" })
  get("/patients/:id_to_display", { :controller => "patients", :action => "show" })

  #------------------------------

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
