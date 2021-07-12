class Cat
  def meow
    self
  end
end

class Dog
  def how_my_dog_barks
    barks = "like a coyote"
    puts barks
    puts self.barks
  end

  def barks
    "like a wokr"
  end
end

# irb(main):002:0> Cat.new.meow
# => #<Cat:0x00007f94da8bf878>
# irb(main):003:0> Dog.new.how_my_dog_barks
# like a coyote
# like a wokr

class Fish
  # class method
  @@name = "Tuna"

  # getter method
  def self.name
    puts "Self inside class methods is #{self}"
    @@name
  end
end

# puts "Fish class method 'name' is: #{Fish.name}"

class AnotherFish
  def name
    puts "Self inside class instante method is: #{self}"
    puts "Self.class inside class instance methos is: #{self.class}"
    "Carp"
  end
end

# irb(main):008:0> carp = AnotherFish.new
# => #<AnotherFish:0x00007f94da8acb10>
# irb(main):009:0> carp.name
# Self inside class instante method is: #<AnotherFish:0x00007f94da8acb10>
# Self.class inside class instance methos is: AnotherFish
# => "Carp"