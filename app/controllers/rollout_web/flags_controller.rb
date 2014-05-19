module RolloutWeb
  class FlagsController < ApplicationController
    def index
      @flags = FLAGS
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