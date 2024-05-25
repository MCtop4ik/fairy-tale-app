class GlossaryController < ApplicationController

  def get_grammar
    data = DataService.new.get_grammar_from_db
    render json: data.to_json, status: 200
  end
end
