class Concert < ActiveRecord::Base
    has_many :locations
    has_many :songs
    
    accepts_nested_attributes_for :songs
end
