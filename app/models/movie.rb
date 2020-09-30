class Movie < ApplicationRecord
  validates :title, :content, presense: ture
end
