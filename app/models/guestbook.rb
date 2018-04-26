class Guestbook < ActiveRecord::Base

   validates :name, presence: true
   validates :message, presence: true, length: { maximum: 500 }

end
