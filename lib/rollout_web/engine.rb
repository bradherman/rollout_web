module RolloutWeb
  class Engine < ::Rails::Engine
    isolate_namespace RolloutWeb
  end
  module Plugins
    def self.plugins
      self.constants.map{|m| self.const_get(m)}
    end
  end
end