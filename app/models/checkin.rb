class Checkin
  include MongoMapper::Document

  key :name, String
  key :address, String
  key :location, Array

  before_save :set_location


  def set_location
    geo = Geocoder.search(address).first
    if geo
      self.location = [geo.latitude, geo.longitude]
    else
      self.location = nil
    end
  end

end
