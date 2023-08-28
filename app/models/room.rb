class Room < ApplicationRecord
  belongs_to :hotel
  has_many :Booking

  validates :room_number, :inclusion => 1..20
  validates :room_price,  :inclusion => {in: ('500''1000')}
end
