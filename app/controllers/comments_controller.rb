class CommentsController < ApplicationController
  def list
    @comments = Comment.all

    render("comment_templates/list.html.erb")
  end

  def details
    @comment = Comment.where({ :id => params.fetch("id_to_display") }).first

    render("comment_templates/details.html.erb")
  end

  def blank_form
    @comment = Comment.new

    render("comment_templates/blank_form.html.erb")
  end

  def save_new_info
    @comment = Comment.new

    @comment.review_id = params.fetch("review_id")
    @comment.commenter_id = params.fetch("commenter_id")
    @comment.comment = params.fetch("comment")
    @comment.comment_vote = params.fetch("comment_vote")

    if @comment.valid?
      @comment.save

      redirect_to("/comments", { :notice => "Comment created successfully." })
    else
      render("comment_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @comment = Comment.where({ :id => params.fetch("id_to_prefill") }).first

    render("comment_templates/prefilled_form.html.erb")
  end

  def save_edits
    @comment = Comment.where({ :id => params.fetch("id_to_modify") }).first

    @comment.review_id = params.fetch("review_id")
    @comment.commenter_id = params.fetch("commenter_id")
    @comment.comment = params.fetch("comment")
    @comment.comment_vote = params.fetch("comment_vote")

    if @comment.valid?
      @comment.save

      redirect_to("/comments/" + @comment.id.to_s, { :notice => "Comment updated successfully." })
    else
      render("comment_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @comment = Comment.where({ :id => params.fetch("id_to_remove") }).first

    @comment.destroy

    redirect_to("/comments", { :notice => "Comment deleted successfully." })
  end
end
