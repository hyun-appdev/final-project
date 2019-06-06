class VotesController < ApplicationController
  def list
    @votes = Vote.all

    render("vote_templates/list.html.erb")
  end

  def details
    @vote = Vote.where({ :id => params.fetch("id_to_display") }).first

    render("vote_templates/details.html.erb")
  end

  def blank_form
    @vote = Vote.new

    render("vote_templates/blank_form.html.erb")
  end

  def save_new_info
    @vote = Vote.new

    @vote.user_id = params.fetch("user_id")
    @vote.review_id = params.fetch("review_id")
    @vote.upvote = params.fetch("upvote")
    @vote.downvote = params.fetch("downvote")

    if @vote.valid?
      @vote.save

      redirect_to("/votes", { :notice => "Vote created successfully." })
    else
      render("vote_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @vote = Vote.where({ :id => params.fetch("id_to_prefill") }).first

    render("vote_templates/prefilled_form.html.erb")
  end

  def save_edits
    @vote = Vote.where({ :id => params.fetch("id_to_modify") }).first

    @vote.user_id = params.fetch("user_id")
    @vote.review_id = params.fetch("review_id")
    @vote.upvote = params.fetch("upvote")
    @vote.downvote = params.fetch("downvote")

    if @vote.valid?
      @vote.save

      redirect_to("/votes/" + @vote.id.to_s, { :notice => "Vote updated successfully." })
    else
      render("vote_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @vote = Vote.where({ :id => params.fetch("id_to_remove") }).first

    @vote.destroy

    redirect_to("/votes", { :notice => "Vote deleted successfully." })
  end
end
