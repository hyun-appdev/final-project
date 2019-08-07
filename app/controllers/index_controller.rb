#require 'elasticsearch/model'

class IndexController < ApplicationController
  def home
    @q = Product.ransack(params[:q])
    
    # Need to create column in Review for number of votes
    #@reviews = Review.all.sort_by(&:count_votes).page(params[:page]).per(10)
    @reviews = Review.all.page(params[:page]).per(10)
    
    render("/index.html.erb")
  end
    
end