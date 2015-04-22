Rails.application.routes.draw do
 root to: 'notes#index'

 resources :notes, only: [:index, :create, :update, :destroy]

 get '*any' => 'notes#index' #if anyone types route, it will go to index page and still use BB routes
end
