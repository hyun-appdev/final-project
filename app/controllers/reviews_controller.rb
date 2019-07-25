class ReviewsController < ApplicationController
  before_action(:you_must_sign_in, { :only => [:blank_form, :save_new_info, :save_edits, :remove_row]})
  
  def you_must_sign_in
    if current_user == nil
      redirect_to("/users/sign_in")
    end
  end
  
  def list
    @reviews = Review.all
    render("review_templates/list.html.erb")
  end

  def details
    @review = Review.where({ :id => params.fetch("id_to_display") }).first
    vote_record = Vote.where({:review_id => @review.id})
    
    if vote_record
      @upvote = 0
      @downvote = 0
      vote_record.each do |vote|
        @upvote = @upvote + vote.upvote
        @downvote = @downvote + vote.downvote 
    end
    else
      @upvote = 0
      @downvote = 0
    end
    @product_id = @review.product_id
    @product = Product.where({:id => @product_id}).first
    render("review_templates/details.html.erb")
  end

  def blank_form
    @product_id = params.fetch("product_id")
    @product = Product.where({:id => @product_id}).first
    @review = Review.new
    render("review_templates/blank_form.html.erb")
  end

  def save_new_info
    @review = Review.new
    @review.compensation_id = 0
    @review.review_content = params.fetch("review_content")
    @review.product_id = params.fetch("product_id")
    @review.ratings = params.fetch("ratings")
    
    if current_user
      @review.reviewer_id = current_user.id   
    else
      @review.reviewer_id = 0
    end
    

    if @review.valid?
      @review.save
      render("review_templates/new_review_confirm.html.erb")

      #redirect_to("/reviews/" + @review.id.to_s, { :notice => "Review created successfully." })
    else
      render("review_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @review = Review.where({ :id => params.fetch("id_to_prefill") }).first

    render("review_templates/prefilled_form.html.erb")
  end

  def save_edits
    @review = Review.where({ :id => params.fetch("id_to_modify") }).first

    @review.compensation_id = params.fetch("compensation_id")
    @review.review_content = params.fetch("review_content")
    @review.product_id = params.fetch("product_id")
    @review.ratings = params.fetch("ratings")
    @review.reviewer_id = params.fetch("reviewer_id")

    if @review.valid?
      @review.save

      redirect_to("/reviews/" + @review.id.to_s, { :notice => "Review updated successfully." })
    else
      render("review_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @review = Review.where({ :id => params.fetch("id_to_remove") }).first

    @review.destroy

    redirect_to("/reviews", { :notice => "Review deleted successfully." })
  end
  
  def search_results
    @product = Product.where({ :id => params.fetch("product_id")}).first
    @reviews = Review.where({ :product_id => params.fetch("product_id")})
    render("review_templates/search_results.html.erb")
  end
  
  def save_complete
    render("review_templates/new_review_confirm.html.erb")
  end
end
