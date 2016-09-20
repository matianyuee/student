Rails.application.routes.draw do
  resources :teachers

  root 'welcome#new'

  resources :containers
  resources :studentinfos do
    collection do
      get :selectstudent
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
