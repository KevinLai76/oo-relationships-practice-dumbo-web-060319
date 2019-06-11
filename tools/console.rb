require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

l1 = Listing.new("nyc")
l2 = Listing.new("no")
l3 = Listing.new("atl")

g1 = Guests.new("sean")
g2 = Guests.new("dennis")
g3 = Guests.new("abril")

t1 = Trip.new(l1, g1)
t2 = Trip.new(l2, g2)
t3 = Trip.new(l3, g3)
t4 = Trip.new(l1, g1)
t5 = Trip.new(l1, g2)
t6 = Trip.new(l1, g3)

Pry.start

