class Bear

  #attr_reader :name ,:species, :stomach
  #attr_writer :stomach


  def initialize(name,species)
    @name=name
    @species=species
    @stomach=[]#internal property- no need for variable as its same for all instances of the class
  end


  def take_fish(source)
    #fish = source.stock[0]#sets value of source item (fish from river) to be a different variable called fish
    @stomach.push(source.stock[0])#push fish directly from source
    source.reduce_stock()#calls source (rivers) reduce_stock method that was created for the object
  end


  # in effect this method adds a fish to stomach[] and reduces fish from river
  def roar()
    return "RAAAAAAAAAAR"
  end

  def count_food
    return @stomach.length#call the initialised variable
  end


#getters (theoretical)- these all work without attr_reader as they call from within the class
# def get_name
#   return @name
# end
#
# def get_species
#   return @species
# end
# 
# def get_stomach
#   return @stomach
# end

















end
