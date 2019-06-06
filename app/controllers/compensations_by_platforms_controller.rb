class CompensationsByPlatformsController < ApplicationController
  def list
    @compensations_by_platforms = CompensationsByPlatform.all

    render("compensations_by_platform_templates/list.html.erb")
  end

  def details
    @compensations_by_platform = CompensationsByPlatform.where({ :id => params.fetch("id_to_display") }).first

    render("compensations_by_platform_templates/details.html.erb")
  end

  def blank_form
    @compensations_by_platform = CompensationsByPlatform.new

    render("compensations_by_platform_templates/blank_form.html.erb")
  end

  def save_new_info
    @compensations_by_platform = CompensationsByPlatform.new

    @compensations_by_platform.compensation_amount = params.fetch("compensation_amount")
    @compensations_by_platform.review_id = params.fetch("review_id")
    @compensations_by_platform.compensated = params.fetch("compensated", false)
    @compensations_by_platform.notes = params.fetch("notes")

    if @compensations_by_platform.valid?
      @compensations_by_platform.save

      redirect_to("/compensations_by_platforms", { :notice => "Compensations by platform created successfully." })
    else
      render("compensations_by_platform_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @compensations_by_platform = CompensationsByPlatform.where({ :id => params.fetch("id_to_prefill") }).first

    render("compensations_by_platform_templates/prefilled_form.html.erb")
  end

  def save_edits
    @compensations_by_platform = CompensationsByPlatform.where({ :id => params.fetch("id_to_modify") }).first

    @compensations_by_platform.compensation_amount = params.fetch("compensation_amount")
    @compensations_by_platform.review_id = params.fetch("review_id")
    @compensations_by_platform.compensated = params.fetch("compensated", false)
    @compensations_by_platform.notes = params.fetch("notes")

    if @compensations_by_platform.valid?
      @compensations_by_platform.save

      redirect_to("/compensations_by_platforms/" + @compensations_by_platform.id.to_s, { :notice => "Compensations by platform updated successfully." })
    else
      render("compensations_by_platform_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @compensations_by_platform = CompensationsByPlatform.where({ :id => params.fetch("id_to_remove") }).first

    @compensations_by_platform.destroy

    redirect_to("/compensations_by_platforms", { :notice => "Compensations by platform deleted successfully." })
  end
end
