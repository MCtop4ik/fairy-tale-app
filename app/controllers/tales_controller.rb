class TalesController < ApplicationController

  def get_tales
    timestamp =  params[:timestamp].to_s
    data = DataService.new.get_all_tales_from_db(timestamp)
    render json: data.to_json, status: 200
  end
end
