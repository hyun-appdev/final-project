#require 'elasticsearch/model'

class IndexController < ApplicationController
  def home
    @q = Product.ransack(params[:q])
    @reviews = @q.result(:distinct => true).includes(:product)
    # Need to create column in Review for number of votes
    #@reviews = Review.all.sort_by(&:count_votes).page(params[:page]).per(10)
    @reviews = Review.all.page(params[:page]).per(10)
    render("/home.html.erb")
  end
    
  def search
    @search_results = Review.search('foobar').records
    puts @search_results
  end
end