module RolloutWeb
  class FlagsController < ApplicationController
    def index
      @flags = Array(FLAGS + ROLLOUT.features).uniq.map{ |x| ROLLOUT.get(x) }
    end

    def update
      if params[:val] == 'true' || params[:pct].to_i > 0
        ROLLOUT.activate(params[:id])
        ROLLOUT.activate_percentage(params[:id], 
          params[:pct].to_i) if params[:pct].to_i > 0
      else
        ROLLOUT.deactivate(params[:id])
      end
      head :ok
    end
  end
end