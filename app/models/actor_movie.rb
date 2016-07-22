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

class ActorMovie < ApplicationRecord
  belongs_to :actor
  belongs_to :movie
end
