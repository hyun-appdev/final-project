#require 'elasticsearch/model'

class IndexController < ApplicationController
  def home
    # Need to change this to order in liked
    @reviews = Review.all.sort_by(&:count_votes)
    
    render("/home.html.erb")
    
  end
    
  def search
    @search_results = Review.search('foobar').records
    puts @search_results
  end
end