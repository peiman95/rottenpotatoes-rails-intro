class Movie < ActiveRecord::Base
    def self.ratings
        Movie.select(:rating).distinct.inject([]) { |o, m| o.push m.rating}
    end
end
