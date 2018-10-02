Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    namespace :api do
	    namespace :v1 do
	      post 'agressors/nova_posicao' => 'posicao_agressor#nova_posicao'

	      resources :agressors

	    end
	 end
end
