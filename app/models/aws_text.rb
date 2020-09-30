class AwsText < ApplicationRecord
  validates :title, :content, presense: ture
end
