class Spree::Snippet < ActiveRecord::Base
 validates :slug, :presence => true, :uniqueness => true
end
