Rails.application.routes.draw do

   root 'applications#index'
   resource :applications
   resource :users
   resource :guestbooks
   resource :contacts

end
