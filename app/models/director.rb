# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  has_many(:filmography, {:class_name => "Movie", :foreign_key => "director_id"})

  #def filmography
  #  my_id = self.id

  #  matching_movies = Movie.where({ :director_id => my_id })

  #  return matching_movies
  #end
end
