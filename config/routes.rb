
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do


      resources :categories, path: '/categories'
      resources :memorable_wrestlers, path: '/categories/4/legends'
      resources :special_matches, path: '/categories/6/matches'


      resources :motivationals, path: '/categories/5/hype_videos'
      resources :technique_open_videos, path: '/categories/9/open_videos'
      resources :technique_dvds, path: '/categories/8/technical_dvds'

      resources :books, path: '/categories/1/books'
      resources :documentaries, path: '/categories/3/documentaries'
      resources :foods, path: '/categories/2/nutrition'

      resources :more_seasons, path: '/categories/7/offseason_resources'



    end
  end
end
