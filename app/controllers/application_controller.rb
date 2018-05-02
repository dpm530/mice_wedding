class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception





      private

         def require_login
            
            if !(session[:user_id])
               return redirect_to root_path
            end

         end



end
