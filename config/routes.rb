CodeMvp::Application.routes.draw do
  devise_for :users
  
  get "/users/:id", to: "users#show"

  root 'prompts#index'

  resources :prompts
end


#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                          GET    /users/:id(.:format)           users#show
#                     root GET    /                              prompts#index
#                  prompts GET    /prompts(.:format)             prompts#index
#                          POST   /prompts(.:format)             prompts#create
#               new_prompt GET    /prompts/new(.:format)         prompts#new
#              edit_prompt GET    /prompts/:id/edit(.:format)    prompts#edit
#                   prompt GET    /prompts/:id(.:format)         prompts#show
#                          PATCH  /prompts/:id(.:format)         prompts#update
#                          PUT    /prompts/:id(.:format)         prompts#update
#                          DELETE /prompts/:id(.:format)         prompts#destroy
