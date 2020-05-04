class Api::V1::LevelsController < ApplicationController

  def index 
    levels = Level.all
    render json: levels, except: [:created_at, :updated_at]
  end 

  def show 
    level = Level.find(params[:id])
    render json: level, except: [:created_at, :updated_at]
  end 

end
