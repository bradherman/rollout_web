module RolloutWeb
  class FlagsController < ApplicationController
    def index
      @flags = if defined? FLAGS
        FLAGS + ROLLOUT.features
      else
        ROLLOUT.features
      end.uniq.map{ |x| ROLLOUT.get(x) }
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