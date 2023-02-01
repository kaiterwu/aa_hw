class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false 
    @seq = []
  end

  def play
    take_turn until @game_over == true 
    game_over_message
    reset_game
  end

  def take_turn
   # until @game_over = true 
    self.show_sequence
    self.require_sequence
    if @game_over == false 
      self.round_success_message 
      @sequence_length +=1 
    else  
      self.game_over_message 
      reset_game
    end 
  #end 
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
    
  end

  def add_random_color
    @seq.push(COLORS.sample)
  end

  def round_success_message
    puts "Success!"
  end

  def game_over_message
    puts "Game Over"
  end

  def reset_game
   self.sequence_length = 1 
   self.seq = [] 
    @game_over = false 
  end
end
