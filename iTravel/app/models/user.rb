class User < ActiveRecord::Base
    has_many :destinations
    has_many :destination_reviews, through: :destinations

end