class Spree::Snippet < ActiveRecord::Base
 validates :slug, :presence => true, :uniqueness => true
 attr_accessible :slug, :content
end
