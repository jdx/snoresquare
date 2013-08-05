require 'spec_helper'

describe Checkin do

  describe '#location' do
    it 'can find the ROC' do
      checkin = Checkin.create(post: 'Couch behind the ROC',
                               address: "604 Arizona, Santa Monica")

      checkin.location.should == [34.0192819, -118.494288]
    end

    it 'can find the chinese theater' do
      checkin = Checkin.create(post: 'Couch behind the chinese theater',
                               address: "6925 Hollywood Blvd, los angeles")

      checkin.location.should == [34.1015696, -118.3410807]
    end

    it 'doesnt break if passed bad data' do
      checkin = Checkin.create(post: 'awesome spot',
                               address: "ljweflkjlwkejflwkejflkwejflkjwapfoijq34p98q34fp983ha4fp98fhp98h")

      checkin.location.should == []
    end
  end
end
