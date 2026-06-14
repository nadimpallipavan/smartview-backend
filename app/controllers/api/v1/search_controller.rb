require 'net/http'
require 'json'

class Api::V1::SearchController < ApplicationController
  def index
    query = params[:query]

    url = URI("https://api.themoviedb.org/3/search/multi?api_key=#{ENV['TMDB_API_KEY']}&query=#{URI.encode_www_form_component(query)}")

    response = Net::HTTP.get(url)
    data = JSON.parse(response)

    render json: data["results"].map do |movie|
      {
        id: movie["id"],
        title: movie["title"] || movie["name"],
        overview: movie["overview"],
        poster: movie["poster_path"] ? "https://image.tmdb.org/t/p/w500#{movie['poster_path']}" : nil,
        rating: movie["vote_average"],
        release_date: movie["release_date"] || movie["first_air_date"],
        media_type: movie["media_type"]
      }
    end
  end
end