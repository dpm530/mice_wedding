class ContactsController < ApplicationController

   def create

      @contact=Contact.create(contact_params)
      return redirect_to :back

   end   


   private

      def contact_params
         params.require(:contact).permit(:name,:email,:subject,:message)
      end

end
