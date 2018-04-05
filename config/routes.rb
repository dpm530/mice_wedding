Rails.application.routes.draw do

   root 'applications#index'
   resource :applications

end
