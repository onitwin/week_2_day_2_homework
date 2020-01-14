class River

  attr_reader :name , :stock

  def initialize(name)
    @name=name
    @stock=[]
  end



  def reduce_stock()
    @stock.pop
  end


  def increase_stock(value)
    @stock.push(value)
  end


  def count_fish
    return @stock.length
  end





end
