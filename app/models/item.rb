class Item < ApplicationRecord

  attachment :image

  belongs_to :admin

end
