Rails.application.routes.draw do
  get    '/' => 'posts#top'
  get    '/posts' => 'posts#index'
  post   'posts' => 'posts#create'
  get    '/posts/:id' => 'posts#show', as: 'post'
  get    '/posts/:id/edit' => 'posts#edit', as: 'edit_post'
  patch  '/posts/:id' => 'posts#update', as: 'update_post'
  delete '/posts/:id' => 'posts#destroy', as: 'destroy_post'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
