class Bookmark < ApplicationRecord
  validates_presence_of :url, :title, :slug
  validates_uniqueness_of :url
end
