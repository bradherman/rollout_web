module RolloutWeb
  class FlagsController < ApplicationController
    def index
      @flags = Array(FLAGS + ROLLOUT.features).uniq.map{ |x| ROLLOUT.get(x) }
    end

    def update
      if params[:val] == 'true'
        ROLLOUT.activate(params[:id])
      else
        ROLLOUT.deactivate(params[:id])
      end
      head :ok
    end
  end
end