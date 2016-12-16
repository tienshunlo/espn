Rails.application.routes.draw do
  resource :messages
  root 'messages#index'
end
