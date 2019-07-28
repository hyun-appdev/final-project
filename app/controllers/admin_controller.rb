class AdminController < ApplicationController
  def admin_home
    render("admin_templates/admin_home.html.erb")
  end
  
  def pending_reviews
    #@reviews = Review.joins(:compensations_by_platform).where(compensations_by_platforms: {compensated: false})
    @reviews = Review.all
    render("admin_templates/admin_pendingreviews.html.erb")    
  end
  
end