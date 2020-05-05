class Api::V1::UsersController < ApplicationController

  def index 
    users = User.all 
    render json: users, except: [:created_at, :updated_at], include: [:statistics]
  end 

  def show 
    user = User.find(params[:id])
    render json: user, except: [:created_at, :updated_at], include: [:statistics]
  end 

  def create  
    user = User.new(user_params)
    if user.save
      render json: user, except: [:created_at, :updated_at]
    else 
      render error: {error: 'Unable to create user.'}, status: 400
    end 
  end 

  def update 
    user = User.find(params[:id])
    user.update(user_params)
    render json: user, except: [:created_at, :updated_at]
  end 

  def destroy 
    user = User.find(params[:id])
    user.destroy
    render json: user, except: [:created_at, :updated_at]
  end 

  private

  def user_params 
    params.require(:user).permit(:name, :password, :keys, :id, unlocked_characters: [], unlocked_levels: [])
  end 

end
