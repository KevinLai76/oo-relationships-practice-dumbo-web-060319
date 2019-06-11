class Listing
    attr_accessor :city

    @@all = []

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all 
    end

    def guests
        trips.map { |g| g.guest } 
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def trip_count
        counter = 0
        trips.each do |trip|
            if trip.listing == self
                counter += 1
            end
        end

        return counter
    end

    def self.find_all_by_city(city_name)
        self.all.select do |c|
            c.city == city_name
        end    
    end

    def self.most_popular
        popular = nil
        self.all.each do |city|
            if popular == nil
                popular = city
            elsif city.trip_count > popular.trip_count
                popular = city
            end
        end 
        
        popular
    end

end