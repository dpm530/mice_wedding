class UsersController < ApplicationController

   def Index
   end

   def create

      @user=User.new(user_params)

      if @user.save
         flash[:notice]=["RSVP'd Successfully"]
         return redirect_to "/#rsvp"
      end

      flash[:errors]=@user.errors.full_messages

      return redirect_to "/#rsvp"

   end

   private

      def user_params
         params.require(:user).permit(:first_name,:last_name,:email,:arrival,:guest,:mobile_number,:attending,:comment)
      end

end
