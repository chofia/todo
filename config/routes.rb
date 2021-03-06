Rails.application.routes.draw do
  root "todo_lists#index"

  resources :todo_lists do
    resources :todo_items, only: [:create, :destroy] do
      member do
        patch :complete
      end
    end
  end
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
