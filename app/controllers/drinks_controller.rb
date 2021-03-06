require 'open-uri'

class DrinksController < ApplicationController
  def index
    @time = Time.now
    @t = (@time.hour)
    page = params[:page] || 1

    drinks_json = open("http://lcboapi.com/products?page=#{page}").read
    @drinks = JSON.parse(drinks_json)

    stouts_json = open("http://lcboapi.com/products?q=stout").read
    @stouts = JSON.parse(stouts_json)

    porter_json = open("http://lcboapi.com/products?q=porter").read
    @porters = JSON.parse(porter_json)
  end

  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
    id = params[:id]
    product_json = open("http://lcboapi.com/products/#{id}").read
    @product = JSON.parse(product_json)
  end

  def stouts
    stouts_json = open("http://lcboapi.com/products?q=stout").read
    @stouts = JSON.parse(stouts_json)
  end

  def pilsner
    pilsner_json = open("http://lcboapi.com/products?q=pilsner").read
    @pilsner = JSON.parse(pilsner_json)
  end

  def porter
    porter_json = open("http://lcboapi.com/products?q=porter").read
    @porter = JSON.parse(porter_json)
  end

  def ipa
    ipa_json = open("http://lcboapi.com/products?q=ipa").read
    @ipa = JSON.parse(ipa_json)
  end
end
