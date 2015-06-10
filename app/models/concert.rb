class Concert < ActiveRecord::Base
    has_many :locations
    has_many :songs
    validates :title, presence: true
    
    
end
