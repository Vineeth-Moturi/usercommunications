Usercommunications::Engine.routes.draw do
  resources :usermaildata
  root to:"usermaildata#index"
end
