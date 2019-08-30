class CompanyProductsController < ApplicationController
  def list
    @company_products = CompanyProduct.all

    render("company_product_templates/list.html.erb")
  end

  def details
    @company_product = CompanyProduct.where({ :id => params.fetch("id_to_display") }).first

    render("company_product_templates/details.html.erb")
  end

  def blank_form
    @company_product = CompanyProduct.new

    render("company_product_templates/blank_form.html.erb")
  end

  def save_new_info
    @company_product = CompanyProduct.new

    @company_product.product_id = params.fetch("product_id")
    @company_product.company_id = params.fetch("company_id")

    if @company_product.valid?
      @company_product.save

      redirect_to("/company_products", { :notice => "Company product created successfully." })
    else
      render("company_product_templates/blank_form.html.erb")
    end
  end

  def prefilled_form
    @company_product = CompanyProduct.where({ :id => params.fetch("id_to_prefill") }).first

    render("company_product_templates/prefilled_form.html.erb")
  end

  def save_edits
    @company_product = CompanyProduct.where({ :id => params.fetch("id_to_modify") }).first

    @company_product.product_id = params.fetch("product_id")
    @company_product.company_id = params.fetch("company_id")

    if @company_product.valid?
      @company_product.save

      redirect_to("/company_products/" + @company_product.id.to_s, { :notice => "Company product updated successfully." })
    else
      render("company_product_templates/prefilled_form.html.erb")
    end
  end

  def remove_row
    @company_product = CompanyProduct.where({ :id => params.fetch("id_to_remove") }).first

    @company_product.destroy

    redirect_to("/company_products", { :notice => "Company product deleted successfully." })
  end
end
