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

class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_year, :production_company, :distributor, :director, :writer

  has_many :locations
  has_many :actors
  has_many :fun_facts
end
