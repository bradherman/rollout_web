# Match IDs with dots in them
id_pattern = /[^\/]+/

RolloutWeb::Engine.routes.draw do
  RolloutWeb::Plugins.plugins.each do |p|
    mount p::Engine => p.engine_path
  end
  post 'flag/:id', to: 'flags#update'
  root to: 'flags#index'
end