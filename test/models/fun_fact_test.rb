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

require 'test_helper'

class FunFactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
