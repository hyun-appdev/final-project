Rails.application.routes.draw do
  # Routes for the Product category resource:

  # CREATE
  match("/new_product_category_form", { :controller => "product_categories", :action => "blank_form", :via => "get" })
  match("/insert_product_category_record", { :controller => "product_categories", :action => "save_new_info", :via => "post" })

  # READ
  match("/product_categories", { :controller => "product_categories", :action => "list", :via => "get" })
  match("/product_categories/:id_to_display", { :controller => "product_categories", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_product_category_form/:id_to_prefill", { :controller => "product_categories", :action => "prefilled_form", :via => "get" })
  match("/update_product_category_record/:id_to_modify", { :controller => "product_categories", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_product_category/:id_to_remove", { :controller => "product_categories", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Category resource:

  # CREATE
  match("/new_category_form", { :controller => "categories", :action => "blank_form", :via => "get" })
  match("/insert_category_record", { :controller => "categories", :action => "save_new_info", :via => "post" })

  # READ
  match("/categories", { :controller => "categories", :action => "list", :via => "get" })
  match("/categories/:id_to_display", { :controller => "categories", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_category_form/:id_to_prefill", { :controller => "categories", :action => "prefilled_form", :via => "get" })
  match("/update_category_record/:id_to_modify", { :controller => "categories", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_category/:id_to_remove", { :controller => "categories", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Company product resource:

  # CREATE
  match("/new_company_product_form", { :controller => "company_products", :action => "blank_form", :via => "get" })
  match("/insert_company_product_record", { :controller => "company_products", :action => "save_new_info", :via => "post" })

  # READ
  match("/company_products", { :controller => "company_products", :action => "list", :via => "get" })
  match("/company_products/:id_to_display", { :controller => "company_products", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_company_product_form/:id_to_prefill", { :controller => "company_products", :action => "prefilled_form", :via => "get" })
  match("/update_company_product_record/:id_to_modify", { :controller => "company_products", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_company_product/:id_to_remove", { :controller => "company_products", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Company resource:

  # CREATE
  match("/new_company_form", { :controller => "companies", :action => "blank_form", :via => "get" })
  match("/insert_company_record", { :controller => "companies", :action => "save_new_info", :via => "post" })

  # READ
  match("/companies", { :controller => "companies", :action => "list", :via => "get" })
  match("/companies/:id_to_display", { :controller => "companies", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_company_form/:id_to_prefill", { :controller => "companies", :action => "prefilled_form", :via => "get" })
  match("/update_company_record/:id_to_modify", { :controller => "companies", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_company/:id_to_remove", { :controller => "companies", :action => "remove_row", :via => "get" })

  #------------------------------

  root 'index#home'
  #match("/", { :controller => "index", :action => "home", :via => "get"})
  
  #------------------------------

  # Routes for the Product resource:
  
  # CREATE
  match("/create_product", { :controller => "products", :action => "blank_form", :via => "get" })
  match("/insert_product_record", { :controller => "products", :action => "save_new_info", :via => "post" })

  # READ
  match("/products", { :controller => "products", :action => "list", :via => "get" })
  match("/products/:product_id", { :controller => "products", :action => "details", :via => "get" })

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
  
  # Other routes
  match("/criteria", { :controller => "index", :action => "display_criteria", :via => "get" })
  
  #------------------------------

  devise_for :users
  # Routes for the Review resource:

  # CREATE
  match("/new_review_form", { :controller => "products", :action => "select_product", :via => "get" })
  match("/new_review_form/:product_id", { :controller => "reviews", :action => "blank_form", :via => "get" })
  match("/insert_review_record", { :controller => "reviews", :action => "save_new_info", :via => "post" })

  # READ
  match("/reviews_products", { :controller => "reviews", :action => "select_product", :via => "get" })
  match("/reviews", { :controller => "reviews", :action => "list", :via => "get" })
  match("/reviews_product/:product_id", { :controller => "reviews", :action => "reviews_for_product", :via => "get" })
  match("/reviews/:id_to_display", { :controller => "reviews", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_review_form/:id_to_prefill", { :controller => "reviews", :action => "prefilled_form", :via => "get" })
  match("/update_review_record/:id_to_modify", { :controller => "reviews", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_review/:id_to_remove", { :controller => "reviews", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for search restuls:
  match("/products_search_results", { :controller => "products", :action => "search_results", :via => "get"})
  match("/reviews_search_results/:product_id", { :controller => "reviews", :action => "search_results", :via => "get"})

  # Routes for selecting a product before writing a review
  match("/write_selectproduct", { :controller => "products", :action=> "select_product", :via => "get"})

  # Routes for admin:
  match("/admin", { :controller => "admin", :action => "admin_home", :via => "get"})
  match("/admin_pending_reviews", { :controller => "admin", :action => "pending_reviews", :via => "get"})

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
