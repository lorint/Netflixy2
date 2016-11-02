class Genre < ApplicationRecord
  has_many :genre_titles
  has_many :titles, through: :genre_titles
end
