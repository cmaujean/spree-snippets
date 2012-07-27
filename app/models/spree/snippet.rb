class Spree::Snippet < ActiveRecord::Base
 validates :slug, :presence => true, :uniqueness => true, :on => :update
 attr_accessible :slug, :content
end
