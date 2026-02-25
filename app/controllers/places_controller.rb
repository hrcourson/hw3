class PlacesController < ApplicationController

  def index
    @places = Place.all
    render({ :template => "places/index" })
  end

  def show
    @place = Place.find(params[:id])
    render({ :template => "places/show" })
  end

  def new
    render({ :template => "places/new" })
  end

  def create
    p = Place.new
    p.name = params[:name]
    p.save
    redirect_to("/places")
  end

end