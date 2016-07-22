# == Schema Information
#
# Table name: location_movies
#
#  id          :integer          not null, primary key
#  location_id :integer
#  movie_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class LocationMovie < ApplicationRecord
  belongs_to :location
  belongs_to :movie
end
