Rails.application.routes.draw do
  match("/", { :controller => "index", :action => "home", :via => "get"})
  
  # Routes for the Vote comment resource:

  # CREATE
  match("/new_vote_comment_form", { :controller => "vote_comments", :action => "blank_form", :via => "get" })
  match("/insert_vote_comment_record", { :controller => "vote_comments", :action => "save_new_info", :via => "post" })

  # READ
  match("/vote_comments", { :controller => "vote_comments", :action => "list", :via => "get" })
  match("/vote_comments/:id_to_display", { :controller => "vote_comments", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_vote_comment_form/:id_to_prefill", { :controller => "vote_comments", :action => "prefilled_form", :via => "get" })
  match("/update_vote_comment_record/:id_to_modify", { :controller => "vote_comments", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_vote_comment/:id_to_remove", { :controller => "vote_comments", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Product resource:

  # CREATE
  match("/new_product_form", { :controller => "products", :action => "blank_form", :via => "get" })
  match("/insert_product_record", { :controller => "products", :action => "save_new_info", :via => "post" })

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

  # READ
  match("/votes", { :controller => "votes", :action => "list", :via => "get" })
  match("/votes/:id_to_display", { :controller => "votes", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_vote_form/:id_to_prefill", { :controller => "votes", :action => "prefilled_form", :via => "get" })
  match("/update_vote_record/:id_to_modify", { :controller => "votes", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_vote/:id_to_remove", { :controller => "votes", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Comment resource:

  # CREATE
  match("/new_comment_form", { :controller => "comments", :action => "blank_form", :via => "get" })
  match("/insert_comment_record", { :controller => "comments", :action => "save_new_info", :via => "post" })

  # READ
  match("/comments", { :controller => "comments", :action => "list", :via => "get" })
  match("/comments/:id_to_display", { :controller => "comments", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_comment_form/:id_to_prefill", { :controller => "comments", :action => "prefilled_form", :via => "get" })
  match("/update_comment_record/:id_to_modify", { :controller => "comments", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_comment/:id_to_remove", { :controller => "comments", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Tips review resource:

  # CREATE
  match("/new_tips_review_form", { :controller => "tips_reviews", :action => "blank_form", :via => "get" })
  match("/insert_tips_review_record", { :controller => "tips_reviews", :action => "save_new_info", :via => "post" })

  # READ
  match("/tips_reviews", { :controller => "tips_reviews", :action => "list", :via => "get" })
  match("/tips_reviews/:id_to_display", { :controller => "tips_reviews", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_tips_review_form/:id_to_prefill", { :controller => "tips_reviews", :action => "prefilled_form", :via => "get" })
  match("/update_tips_review_record/:id_to_modify", { :controller => "tips_reviews", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_tips_review/:id_to_remove", { :controller => "tips_reviews", :action => "remove_row", :via => "get" })

  #------------------------------

  # Routes for the Compensations by platform resource:

  # CREATE
  match("/new_compensations_by_platform_form", { :controller => "compensations_by_platforms", :action => "blank_form", :via => "get" })
  match("/insert_compensations_by_platform_record", { :controller => "compensations_by_platforms", :action => "save_new_info", :via => "post" })

  # READ
  match("/compensations_by_platforms", { :controller => "compensations_by_platforms", :action => "list", :via => "get" })
  match("/compensations_by_platforms/:id_to_display", { :controller => "compensations_by_platforms", :action => "details", :via => "get" })

  # UPDATE
  match("/existing_compensations_by_platform_form/:id_to_prefill", { :controller => "compensations_by_platforms", :action => "prefilled_form", :via => "get" })
  match("/update_compensations_by_platform_record/:id_to_modify", { :controller => "compensations_by_platforms", :action => "save_edits", :via => "post" })

  # DELETE
  match("/delete_compensations_by_platform/:id_to_remove", { :controller => "compensations_by_platforms", :action => "remove_row", :via => "get" })

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

  # Routes for review search restuls:
  match("/reviews_search", { :controller => "reviews", :action => "search_results", :via => "get"})

  # Routes for selecting a product before writing a review
  match("/write_selectproduct", { :controller => "products", :action=> "select_product", :via => "get"})

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
