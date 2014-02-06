require 'open-uri'

class DrinksController < ApplicationController
  def index
    drinks_json = open('http://lcboapi.com/products').read
    @drinks = JSON.parse(drinks_json)
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
  end


end
