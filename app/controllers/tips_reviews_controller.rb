class TipsReviewsController < ApplicationController
  def list
    @tips_reviews = TipsReview.all

    render("tips_review_templates/list.html.erb")
  end

  def details
    @tips_review = TipsReview.where({ :id => params.fetch("id_to_display") }).first

    render("tips_review_templates/details.html.erb")
  end

  def blank_form
    @tips_review = TipsReview.new

    render("tips_review_templates/blank_form.html.erb")
  end

  def save_new_info
    @tips_review = TipsReview.new

    @tips_review.user_id = params.fetch("user_id")
    @tips_review.review_id = params.fetch("review_id")
    @tips_review.amount = params.fetch("amount")

    if @tips_review.valid?
      @tips_review.save

      redirect_to("/tips_reviews", { :notice => "Tips review created successfully." })
    else
      render("tips_review_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @tips_review = TipsReview.where({ :id => params.fetch("id_to_prefill") }).first

    render("tips_review_templates/prefilled_form.html.erb")
  end

  def save_edits
    @tips_review = TipsReview.where({ :id => params.fetch("id_to_modify") }).first

    @tips_review.user_id = params.fetch("user_id")
    @tips_review.review_id = params.fetch("review_id")
    @tips_review.amount = params.fetch("amount")

    if @tips_review.valid?
      @tips_review.save

      redirect_to("/tips_reviews/" + @tips_review.id.to_s, { :notice => "Tips review updated successfully." })
    else
      render("tips_review_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @tips_review = TipsReview.where({ :id => params.fetch("id_to_remove") }).first

    @tips_review.destroy

    redirect_to("/tips_reviews", { :notice => "Tips review deleted successfully." })
  end
end
