class Snippet < ActiveRecord::Base
  validates_presence_of :slug
  validates_uniqueness_of :slug
end
