class Contact < ActiveRecord::Base

   validates :name, presence: true
   validates :subject, presence: true
   validates :message, presence: true, length: { maximum: 500 }



end
