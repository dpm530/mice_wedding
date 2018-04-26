class GuestbooksController < ApplicationController


   def create
      @guestbook=Guestbook.new(guestbook_params)

      if @guestbook.save
         flash[:notice]=["Message Successfully Created"]
         return redirect_to "/#guestbook"
      end

      flash[:errors]=@guestbook.errors.full_messages

      return redirect_to "/#guestbook"

   end

   def guestbook_params
      params.require(:guestbook).permit(:name,:message)

   end

end
