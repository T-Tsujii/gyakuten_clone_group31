class Movie < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
end
