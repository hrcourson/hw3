class EntriesController < ApplicationController

  def new
    @place = Place.find(params[:place_id])
    render({ :template => "entries/new" })
  end

  def create
    e = Entry.new
    e.place_id = params[:place_id]
    e.title = params[:title]
    e.description = params[:description]
    e.occurred_on = params[:occurred_on]
    e.save
    redirect_to("/places/#{e.place_id}")
  end

end