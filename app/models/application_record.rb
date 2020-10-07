class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :title, presense: true
  validates :content, presense: true
end
