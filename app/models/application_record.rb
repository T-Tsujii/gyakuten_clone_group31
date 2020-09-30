class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :title, :content, presense: ture
end
