class Song < ApplicationRecord
  validates :title, presence: true
  validates :album, presence: true
  validates :release_date, presence: true


  belongs_to :artist


end
