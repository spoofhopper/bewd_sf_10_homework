require 'pry'
require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/tenant'

#requires all our fancy new libraries!

def create_building
  puts "Building name?"
  name = gets.strip
  puts "Building address"
  address = gets.strip
  Building.new(name, address)
end

def create_apartment
  Apartment.random_apartment_maker
  # puts "Apartment unit #?"
  # unit = gets.strip
  # puts "# bedrooms"
  # bedrooms = gets.strip
  # puts "# bathrooms"
  # bathrooms = gets.strip
  # puts "sqft"
  # sqft = gets.strip
  # Apartment.new(unit, bedrooms, sqft, bathrooms)
end

def create_tenant
  Tenant.random_tenant_maker
end


def add_apartments_to_building(building)
  puts "How many units? \n"
  units = gets.strip.to_i
  units.times do
    building.apartments.push(create_apartment)
  end
end

def add_tenant_to_apartment(tenant, apartment)
  apartment.tenant = tenant
end




new_building = create_building
new_apartment = create_apartment
add_apartments_to_building(new_building)


binding.pry

puts "end!!!"
