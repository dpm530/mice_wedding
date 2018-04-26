class User < ActiveRecord::Base

   validates :first_name, :last_name, presence: true
   validates :attending, presence: true
   validates :comment, length: { maximum: 500 }




end
