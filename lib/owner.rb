class Owner
  # code goes here


attr_accessor :name, :pets
attr_reader :species

@@all = []

def initialize(species)
  @species = species
  @pets = {fishes:[], cats:[], dogs:[]}
  @@all << self
end

def say_species
  "I am a #{self.species}."
end

def buy_fish(name)
  new_fish = Fish.new(name)
  @pets[:fishes] << new_fish
end

def buy_cat(name)
  new_cat = Cat.new(name)
  @pets[:cats] << new_cat
end

def buy_dog(name)
  new_dog = Dog.new(name)
  @pets[:dogs] << new_dog
end

def walk_dogs
  pets[:dogs].each do |dog|
  dog.mood = "happy"
end
end

def play_with_cats
  pets[:cats].each do |cat|
    cat.mood = "happy"
end
end

def feed_fish
  pets[:fish].each do |fish|
    fish.mood = "happy"
end
end

def sell_pets
end

def list_pets
end

end
