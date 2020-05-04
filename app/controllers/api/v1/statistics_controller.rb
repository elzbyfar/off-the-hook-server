class Api::V1::StatisticsController < ApplicationController

  def index 
    statistics = Statistic.all 
    render json: statistics, except: [:created_at, :updated_at] 
  end 

  def show 
    statistic = Statistic.find(params[:id])
    render json: statistic, except: [:created_at, :updated_at]
  end 

  def create 
    statistic = Statistic.new(statistic_params)
    if statistic.valid?
      statistic.save 
      render json: statistic, except: [:created_at, :updated_at]
    else 
      render error: {error: 'Unable to create those stats'}, status: 400
    end 
  end 

  private 

  def statistic_params 
    params.require(:statistic).permit(:user, :character, :level_num, :score, :treasures, :worms)
  end 

end
