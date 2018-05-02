class ApplicationsController < ApplicationController

   def index
      @guestbook_messages=Guestbook.all.reverse_order
   end

   def create

      if params[:username]==="mayraplusmario"
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
