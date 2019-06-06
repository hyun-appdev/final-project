class ReviewsController < ApplicationController
  def list
    @reviews = Review.all

    render("review_templates/list.html.erb")
  end

  def details
    @review = Review.where({ :id => params.fetch("id_to_display") }).first

    render("review_templates/details.html.erb")
  end

  def blank_form
    @review = Review.new

    render("review_templates/blank_form.html.erb")
  end

  def save_new_info
    @review = Review.new

    @review.compensation_id = params.fetch("compensation_id")
    @review.review_content = params.fetch("review_content")
    @review.product_id = params.fetch("product_id")
    @review.ratings = params.fetch("ratings")
    @review.reviewer_id = params.fetch("reviewer_id")

    if @review.valid?
      @review.save

      redirect_to("/reviews", { :notice => "Review created successfully." })
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
  
  def search_reviews
    
  end
end
