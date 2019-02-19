class Flat < ApplicationRecord
  #Runs before making thing presistant
  #We will call our GEOCODING here on our field Address
    #It will save to long and lat
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
