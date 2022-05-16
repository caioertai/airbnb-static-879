require "open-uri"

class FlatsController < ApplicationController
  def index
    # @flats = Flat.all
    @flats = flat_all
  end

  # /flats/:id
  # /flats/145
  # /flats/99
  # params => { id: 99 }
  def show
    # @flat = Flat.find(params[:id]) # When we have active record
    @flat = flat_all.find { |flat| flat.id == params[:id].to_i }
  end

  private

  def flat_all
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    JSON.parse(URI.open(url).read).map { |flat_attrs| OpenStruct.new(flat_attrs) }
  end
end
