class ApplicationsController < ApplicationController

   def index
      @guestbook_messages=Guestbook.all
   end


end
