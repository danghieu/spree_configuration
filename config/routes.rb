Spree::Core::Engine.routes.draw do
	namespace :admin do
		resources :currencies
	end
  # Add your extension routes here
end
