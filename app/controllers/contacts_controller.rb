class ContactsController < ApplicationController

   def create

      @contact=Contact.new(contact_params)

      if @contact.save
         flash[:notice]=["Message Sent"]
         return redirect_to "/#contact"
      end

      flash[:errors]=@contact.errors.full_messages

      return redirect_to "/#contact"

   end


   private

      def contact_params
         params.require(:contact).permit(:name,:email,:subject,:message)
      end

end
