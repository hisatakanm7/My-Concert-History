class Song < ActiveRecord::Base
  belongs_to :concert
  validates :title, presence: true
end
