class TalesController < ApplicationController

  def get_tales
    timestamp = params[:timestamp].to_s
    data = DataService.new.get_all_tales_from_db(timestamp)
    render json: data.to_json, status: 200
  end

  def get_tale
    id = params[:id].to_i
    data = DataService.new.get_tale_by_id(id)
    render json: data.to_json, status: 200
  end
end
