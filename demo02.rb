class Cat
  attr_reader :name, :age, :meows

  def initialize(name, age, meows)
    @name = name
    @age = age
    @meows = meows
  end

  def breath
    "inhale and exhale"
  end

  def eat
    "with its mouth"
  end
end

class Dog
  attr_reader :name, :age, :barks

  def initialize(name, age, barks)
    @name = name
    @age = age
    @barks = barks
  end

  def breath
    "inhale and exhale"
  end

  def eat
    "with its mouth"
  end
end

# irb(main):008:0> cat_lucy = Cat.new "Lucy", 3, true
# => #<Cat:0x00007faefc1cced0 @age=3, @meows=true, @name="Lucy">
# irb(main):009:0> dog_fido = Dog.new "Fido", 5, false
# => #<Dog:0x00007faefc3d6460 @age=5, @barks=false, @name="Fido">
# irb(main):010:0> dog_firulais = Dog.new "Firulais", 2, true
# => #<Dog:0x00007faefc37e738 @age=2, @barks=true, @name="Firulais">