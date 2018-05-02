Rails.application.routes.draw do

   root 'applications#index'

   get '/logout' => 'applications#destroy'

   resource :applications
   resource :users
   resource :guestbooks
   resource :contacts

end
