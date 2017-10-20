Rails.application.routes.draw do
  resources :things do
    post :create_via_job, :on => :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => redirect('/things')
end
