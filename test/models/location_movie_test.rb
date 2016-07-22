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

require 'test_helper'

class LocationMovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
