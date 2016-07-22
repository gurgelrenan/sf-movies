# == Schema Information
#
# Table name: fun_facts
#
#  id          :integer          not null, primary key
#  description :string
#  movie_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class FunFact < ApplicationRecord
  belongs_to :movie
end
