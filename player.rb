class Player

  attr_accessor :life
  attr_reader :name
  
  def initialize(name)
    @name = name
    @life = 3
  end

  def life_drop
    @life -= 1
    puts "Seriously?! No!"

    if self.life == 0
      puts "#{name} is now dead"
    else
      puts "Your new life is #{life}/3"
    end

  end

end