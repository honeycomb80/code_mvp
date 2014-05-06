CodeMvp::Application.routes.draw do
  devise_for :users
  
  root 'prompts#index'
end
