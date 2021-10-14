class Player

  attr_accessor :life
  attr_reader :name
  
  def initialize(name)
    @name = name
    @life = 3
  end

  def life_drop
    @life -= 1
    puts "#{name}: Seriously?! No!"
    is_dead
  end

  def is_dead
    if self.life == 0
      puts "#{name} is now dead"
      puts "----- GAME OVER -----"
      exit(true)
    else
      puts "#{name}'s new life is #{life}/3"
    end

  end

end