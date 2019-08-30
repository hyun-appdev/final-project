class ProductCategoriesController < ApplicationController
  def list
    @product_categories = ProductCategory.all

    render("product_category_templates/list.html.erb")
  end

  def details
    @product_category = ProductCategory.where({ :id => params.fetch("id_to_display") }).first

    render("product_category_templates/details.html.erb")
  end

  def blank_form
    @product_category = ProductCategory.new

    render("product_category_templates/blank_form.html.erb")
  end

  def save_new_info
    @product_category = ProductCategory.new

    @product_category.product_id = params.fetch("product_id")
    @product_category.category_id = params.fetch("category_id")

    if @product_category.valid?
      @product_category.save

      redirect_to("/product_categories", { :notice => "Product category created successfully." })
    else
      render("product_category_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @product_category = ProductCategory.where({ :id => params.fetch("id_to_prefill") }).first

    render("product_category_templates/prefilled_form.html.erb")
  end

  def save_edits
    @product_category = ProductCategory.where({ :id => params.fetch("id_to_modify") }).first

    @product_category.product_id = params.fetch("product_id")
    @product_category.category_id = params.fetch("category_id")

    if @product_category.valid?
      @product_category.save

      redirect_to("/product_categories/" + @product_category.id.to_s, { :notice => "Product category updated successfully." })
    else
      render("product_category_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @product_category = ProductCategory.where({ :id => params.fetch("id_to_remove") }).first

    @product_category.destroy

    redirect_to("/product_categories", { :notice => "Product category deleted successfully." })
  end
end
