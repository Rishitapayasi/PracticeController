class Hotel < ApplicationRecord
  belongs_to :owner 
  has_many :rooms 
  has_manny :bookings 

  enum :status, [:open, closed]
end
