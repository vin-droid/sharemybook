class Address < ApplicationRecord

   enum addr_typ: [:Home, :Office]
belongs_to :user 
end
