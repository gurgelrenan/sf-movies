# == Schema Information
#
# Table name: actor_movies
#
#  id         :integer          not null, primary key
#  actor_id   :integer
#  movie_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ActorMovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
