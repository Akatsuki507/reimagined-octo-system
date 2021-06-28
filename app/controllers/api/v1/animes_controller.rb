require 'json'
class Api::V1::AnimesController < ApplicationController
  after_action :cors_set_access_control_headers

  def trending
    file = File.read('lib/trending_animes.json')
    @animes = JSON.parse(file)
    render json: @animes
  end

  def index
    file = File.read('lib/large_list.json')
    @animes = JSON.parse(file)
    render json: @animes
  end

  private

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end
end
