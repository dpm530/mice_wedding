class ApplicationsController < ApplicationController
   before_action :require_login, only: [:destroy, :show]


   def index
      @guestbook_messages=Guestbook.all.reverse_order
   end

   def create

      if params[:username]==="mishabebe"
         session[:user_id]="1"
         return redirect_to "/applications"
      end

      return redirect_to "/"

   end

   def show
      @guestbook_messages=Guestbook.all
      @contacts=Contact.all
      @rsvps=User.all
   end

   def destroy
      session.clear
      return redirect_to "/"
   end


end
