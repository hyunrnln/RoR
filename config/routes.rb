Rails.application.routes.draw do
	resources :articles do
		resources :comments, only: [:create]   #댓글이 게시글에 종속되도록 설정
	end
	
  resources :comments
  resources :articles
  devise_for :users
  resources :tests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
	#root 'tests#index'

	root 'articles#index'
end
