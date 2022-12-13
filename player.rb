class Player
attr_reader :name, :lives;

def initialize (name)
  @lives = 3
  @name = name
end

def reduceLives
  @lives -= 1
end

def isDead
  @lives == 0
end

end