require "faker"

Car.destroy_all
Owner.destroy_all
Review.destroy_all
Favourite.destroy_all

cars = []
owners = []

7.times do
  owners << Owner.create(nickname: Faker::FunnyName.name)
end

21.times do
  make = Faker::Vehicle.make
  car = Car.new({
    brand: make,
    model: "#{Faker::Vehicle.model(make_of_model: make)} #{Faker::Vehicle.version}",
    year: Faker::Vehicle.year,
    fuel: Faker::Vehicle.fuel_type,
  })
  car.owner = owners.sample
  car.save!
  cars << car
  Favourite.create(car: car) if [true, false, false, false].sample
end

cars.sample(10).each do |car|
  review = Review.new(comment: Faker::Lorem.paragraph, rating: (0..5).to_a.sample)
  review.car = car
  review.save!
end
