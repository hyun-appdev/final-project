class VoteCommentsController < ApplicationController
  def list
    @vote_comments = VoteComment.all

    render("vote_comment_templates/list.html.erb")
  end

  def details
    @vote_comment = VoteComment.where({ :id => params.fetch("id_to_display") }).first

    render("vote_comment_templates/details.html.erb")
  end

  def blank_form
    @vote_comment = VoteComment.new

    render("vote_comment_templates/blank_form.html.erb")
  end

  def save_new_info
    @vote_comment = VoteComment.new

    @vote_comment.voter_id = params.fetch("voter_id")
    @vote_comment.comment_id = params.fetch("comment_id")

    if @vote_comment.valid?
      @vote_comment.save

      redirect_to("/vote_comments", { :notice => "Vote comment created successfully." })
    else
      render("vote_comment_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @vote_comment = VoteComment.where({ :id => params.fetch("id_to_prefill") }).first

    render("vote_comment_templates/prefilled_form.html.erb")
  end

  def save_edits
    @vote_comment = VoteComment.where({ :id => params.fetch("id_to_modify") }).first

    @vote_comment.voter_id = params.fetch("voter_id")
    @vote_comment.comment_id = params.fetch("comment_id")

    if @vote_comment.valid?
      @vote_comment.save

      redirect_to("/vote_comments/" + @vote_comment.id.to_s, { :notice => "Vote comment updated successfully." })
    else
      render("vote_comment_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @vote_comment = VoteComment.where({ :id => params.fetch("id_to_remove") }).first

    @vote_comment.destroy

    redirect_to("/vote_comments", { :notice => "Vote comment deleted successfully." })
  end
end
