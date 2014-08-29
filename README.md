#Airport-Test

An airport program written for the Week 3 Friday Test at Makers Academy. The task is to control the flow of airplanes at an airport. Planes can land and take off provided that the weather is sunny. Ocasionally it may be stormy, in which case no planes can land or take off.

The aim is to create a set of classes and modules to make the test suite pass.

##Objectives of exercise

To practise Test-Driven-Development and Object-Oriented-Programming.

##Technologies 

* Ruby
* RSpec

##How to run

```
git clone https://github.com/jpatel531/airport-test.git
irb
require './lib/plane'
require './lib/airport'
```

``` ruby
plane = Plane.new
airport = Airport.new

# methods you can play around with
plane.land_in airport
plane.take_off_from airport

plane.status
airport.planes

airport.storm_checker
airport.capacity_checker
# and so on...
```

##How to test

```
cd airport-test
rspec
```

