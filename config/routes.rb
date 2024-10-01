BadgeMaker::Engine.routes.draw do
  resources :badges, only: [:index, :create, :show]
end

Discourse::Application.routes.draw do
  mount ::BadgeMaker::Engine, at: '/badge_maker', as: 'badge_maker_plugin'  # Changed from 'custom_badge_maker'
end
