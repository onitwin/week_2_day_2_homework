class Bear

  attr_reader :name ,:species, :stomach
  attr_writer :stomach


  def initialize(name,species)
    @name=name
    @species=species
    @stomach=[]
  end


  def take_fish(source)
    fish = source.stock[0]#sets value of source item (fish from river) to be a different variable called fish
    @stomach.push(fish)#standard array push of new fish item into stomach array
    source.reduce_stock()#calls source (rivers) reduce_stock method that was created for the object
  end


  # in effect this method adds a fish to stomach[] and reduces fish from river
  def roar()
    return "RAAAAAAAAAAR"
  end

  def count_food
    return @stomach.length#call the initialised variable
  end




















end
