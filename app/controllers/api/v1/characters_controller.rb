class Api::V1::CharactersController < ApplicationController

  def index 
    characters = Character.all
    render json: characters, except: [:created_at, :updated_at], include: [:statistics]
  end 

  def show 
    character = Character.find(params[:id])
    render json: character, except: [:created_at, :updated_at], include: [:statistics]
  end 

end
