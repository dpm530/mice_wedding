class GuestbooksController < ApplicationController


   def create
      @guestbook=Guestbook.create(guestbook_params)
      return redirect_to :back
   end   

   def guestbook_params
      params.require(:guestbook).permit(:name,:message)

   end

end
