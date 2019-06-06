class ProductsController < ApplicationController
  def list
    @products = Product.all

    render("product_templates/list.html.erb")
  end

  def details
    @product = Product.where({ :id => params.fetch("id_to_display") }).first

    render("product_templates/details.html.erb")
  end

  def blank_form
    @product = Product.new

    render("product_templates/blank_form.html.erb")
  end

  def save_new_info
    @product = Product.new

    @product.category = params.fetch("category")
    @product.company_id = params.fetch("company_id")
    @product.serial_no = params.fetch("serial_no")

    if @product.valid?
      @product.save

      redirect_to("/products", { :notice => "Product created successfully." })
    else
      render("product_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @product = Product.where({ :id => params.fetch("id_to_prefill") }).first

    render("product_templates/prefilled_form.html.erb")
  end

  def save_edits
    @product = Product.where({ :id => params.fetch("id_to_modify") }).first

    @product.category = params.fetch("category")
    @product.company_id = params.fetch("company_id")
    @product.serial_no = params.fetch("serial_no")

    if @product.valid?
      @product.save

      redirect_to("/products/" + @product.id.to_s, { :notice => "Product updated successfully." })
    else
      render("product_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @product = Product.where({ :id => params.fetch("id_to_remove") }).first

    @product.destroy

    redirect_to("/products", { :notice => "Product deleted successfully." })
  end
end
