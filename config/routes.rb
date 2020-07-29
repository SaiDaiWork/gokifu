Rails.application.routes.draw do
  get 'kifu/list'
  get 'kifu/new'
  post 'kifu/create'
  patch 'kifu/update'
  get 'kifu/list'
  get 'kifu/show'
  get 'kifu/edit'
  get 'kifu/delete'
  get 'kifu/update'
  get 'kifu/show_players'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
