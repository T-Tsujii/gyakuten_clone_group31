class Movie < ApplicationRecord
  validates :title, presense: true
  validates :content, presense: true
end
