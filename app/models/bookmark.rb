class Bookmark < ApplicationRecord
  validates_presence_of :url, :title
  validates_uniqueness_of :url
end
