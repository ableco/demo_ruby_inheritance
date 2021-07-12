class Animal
  attr_reader :name, :age
  def speak
    ""
  end
end

class Cat < Animal
  def speak
    "meaoo"
  end
end
  
class Human < Animal
  def speak
    "Hola mundo"
  end
end

