class ContentController < ApplicationController
  def home
    @locations = Array.new

    Travel.all.each do |t|
      t.locations.all.each do |l|
        @locations.append(:latlng => [l.longitude, l.latitude])
      end
    end
  end
end
