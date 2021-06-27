require 'json'
class Api::V1::AnimesController < ApplicationController
  def trending
    file = File.read('lib/trending_animes.json')
    @animes = JSON.parse(file)
    p @animes
    render json: @animes
  end
end
