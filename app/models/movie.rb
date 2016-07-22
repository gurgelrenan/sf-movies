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

class Movie < ApplicationRecord
  has_many :location_movies
  has_many :locations, through: :location_movies

  has_many :fun_facts

  has_many :actor_movies
  has_many :actors, through: :actor_movies
end
