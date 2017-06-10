Rails.application.routes.draw do

  # Routes for the Photo resource:
  # CREATE
  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

  # Routes for the Like resource:
  # CREATE
  get "/likes/new", :controller => "likes", :action => "new"
  post "/create_like", :controller => "likes", :action => "create"

  # READ
  get "/likes", :controller => "likes", :action => "index"
  get "/likes/:id", :controller => "likes", :action => "show"

  # UPDATE
  get "/likes/:id/edit", :controller => "likes", :action => "edit"
  post "/update_like/:id", :controller => "likes", :action => "update"

  # DELETE
  get "/delete_like/:id", :controller => "likes", :action => "destroy"
  #------------------------------

  # Routes for the Spot_tag resource:
  # CREATE
  get "/spot_tags/new", :controller => "spot_tags", :action => "new"
  post "/create_spot_tag", :controller => "spot_tags", :action => "create"

  # READ
  get "/spot_tags", :controller => "spot_tags", :action => "index"
  get "/spot_tags/:id", :controller => "spot_tags", :action => "show"

  # UPDATE
  get "/spot_tags/:id/edit", :controller => "spot_tags", :action => "edit"
  post "/update_spot_tag/:id", :controller => "spot_tags", :action => "update"

  # DELETE
  get "/delete_spot_tag/:id", :controller => "spot_tags", :action => "destroy"
  #------------------------------

  # Routes for the Tag resource:
  # CREATE
  get "/tags/new", :controller => "tags", :action => "new"
  post "/create_tag", :controller => "tags", :action => "create"

  # READ
  get "/tags", :controller => "tags", :action => "index"
  get "/tags/:id", :controller => "tags", :action => "show"

  # UPDATE
  get "/tags/:id/edit", :controller => "tags", :action => "edit"
  post "/update_tag/:id", :controller => "tags", :action => "update"

  # DELETE
  get "/delete_tag/:id", :controller => "tags", :action => "destroy"
  #------------------------------

  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

  # Routes for the Spot resource:
  # CREATE
  get "/spots/new", :controller => "spots", :action => "new"
  post "/create_spot", :controller => "spots", :action => "create"

  # READ
  get "/spots", :controller => "spots", :action => "index"
  get "/spots/:id", :controller => "spots", :action => "show"

  # UPDATE
  get "/spots/:id/edit", :controller => "spots", :action => "edit"
  post "/update_spot/:id", :controller => "spots", :action => "update"

  # DELETE
  get "/delete_spot/:id", :controller => "spots", :action => "destroy"
  #------------------------------

  # Routes for the Group_enrollment resource:
  # CREATE
  get "/group_enrollments/new", :controller => "group_enrollments", :action => "new"
  post "/create_group_enrollment", :controller => "group_enrollments", :action => "create"

  # READ
  get "/group_enrollments", :controller => "group_enrollments", :action => "index"
  get "/group_enrollments/:id", :controller => "group_enrollments", :action => "show"

  # UPDATE
  get "/group_enrollments/:id/edit", :controller => "group_enrollments", :action => "edit"
  post "/update_group_enrollment/:id", :controller => "group_enrollments", :action => "update"

  # DELETE
  get "/delete_group_enrollment/:id", :controller => "group_enrollments", :action => "destroy"
  #------------------------------

  devise_for :users
  root to: "groups#index"
  # Routes for the Group resource:
  # CREATE
  get "/groups/new", :controller => "groups", :action => "new"
  post "/create_group", :controller => "groups", :action => "create"

  # READ
  get "/groups", :controller => "groups", :action => "index"
  get "/groups/:id", :controller => "groups", :action => "show"

  # UPDATE
  get "/groups/:id/edit", :controller => "groups", :action => "edit"
  post "/update_group/:id", :controller => "groups", :action => "update"

  # DELETE
  get "/delete_group/:id", :controller => "groups", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
