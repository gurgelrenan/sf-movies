# == Schema Information
#
# Table name: movies
#
#  id                 :integer          not null, primary key
#  title              :string
#  release_year       :string
#  production_company :string
#  distributor        :string
#  director           :string
#  writer             :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
