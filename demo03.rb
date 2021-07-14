module AbleToBreathUnderwater
  def can_breath_underwater?
    "Yes, I am able to breath underwater"
  end
end

class Pet
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def breath
    "inhale and exhale"
  end

  def eat
    "with its mouth"
  end

  def speak
    "soy mudo"
  end

  def to_s
    "yo mismo"
  end
end

class Cat < Pet
  attr_reader :meows

  def initialize(name, age, meows)
    super(name, age) # llamando a initializer del padre. 
    @meows = meows
  end

  def speak
    puts "meow"
    super
  end

  def to_s
    call "veterinario"
    super
  end
  
end

class Dog < Pet
  attr_reader :barks

  def initialize(name, age, barks)
    super(name, age)
    @barks = barks
  end

  def speak
    "guao guao"
    puts super
  end
  
end

# irb(main):008:0> cat_lucy = Cat.new "Lucy", 3, true
# => #<Cat:0x00007faefc1cced0 @age=3, @meows=true, @name="Lucy">
# irb(main):009:0> dog_fido = Dog.new "Fido", 5, false
# => #<Dog:0x00007faefc3d6460 @age=5, @barks=false, @name="Fido">
# irb(main):010:0> dog_firulais = Dog.new "Firulais", 2, true
# => #<Dog:0x00007faefc37e738 @age=2, @barks=true, @name="Firulais">

class Fish < Pet
  include AbleToBreathUnderwater
end

# irb(main):012:0> fish_querty = Fish.new "qwerty", 2
# => #<Fish:0x00007fa576088810 @age=2, @name="qwerty">
# irb(main):015:0> fish_querty.can_breath_underwater
# => "is able to breath underwater"