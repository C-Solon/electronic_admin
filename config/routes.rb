Rails.application.routes.draw do
  devise_for :professionals
  # Routes for the Professional resource:

  # READ
  get("/professionals", { :controller => "professionals", :action => "index" })
  get("/professionals/:id_to_display", { :controller => "professionals", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
