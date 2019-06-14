Rails.application.routes.draw do
  match("/", { :controller => "index", :action => "home", :via => "get"})
  
  #------------------------------

  # Routes for the Product resource:
  
  # CREATE
  match("/create_product", { :controller => "products", :action => "blank_form", :via => "get" })
  match("/insert_product_record", { :controller => "products", :action => "save_new_info", :via => "get" })

  # READ
  match("/products", { :controller => "products", :action => "list", :via => "get" })
  match("/products/:id_to_display", { :controller => "products", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_product_form/:id_to_prefill", { :controller => "products", :action => "prefilled_form", :via => "get" })
  match("/update_product_record/:id_to_modify", { :controller => "products", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_product/:id_to_remove", { :controller => "products", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Vote resource:

  # CREATE
  match("/new_vote_form", { :controller => "votes", :action => "blank_form", :via => "get" })
  match("/insert_vote_record_up", { :controller => "votes", :action => "save_new_info_up", :via => "get" })
  match("/insert_vote_record_down", { :controller => "votes", :action => "save_new_info_down", :via => "get" })

  # DELETE
  match("/delete_vote/:id_to_remove", { :controller => "votes", :action => "remove_row", :via => "get" })

  #------------------------------

  devise_for :users
  # Routes for the Review resource:

  # CREATE
  match("/new_review_form", { :controller => "products", :action => "select_product", :via => "get" })
  match("/new_review_form/:product_id", { :controller => "reviews", :action => "blank_form", :via => "get" })
  match("/insert_review_record", { :controller => "reviews", :action => "save_new_info", :via => "post" })

  # READ
  match("/reviews", { :controller => "reviews", :action => "list", :via => "get" })
  match("/reviews/:id_to_display", { :controller => "reviews", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_review_form/:id_to_prefill", { :controller => "reviews", :action => "prefilled_form", :via => "get" })
  match("/update_review_record/:id_to_modify", { :controller => "reviews", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_review/:id_to_remove", { :controller => "reviews", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for search restuls:
  match("/products_search", { :controller => "products", :action => "search_results", :via => "get"})
  match("/reviews_search/:product_id", { :controller => "reviews", :action => "search_results", :via => "get"})

  # Routes for selecting a product before writing a review
  match("/write_selectproduct", { :controller => "products", :action=> "select_product", :via => "get"})

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
