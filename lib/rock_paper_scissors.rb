class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    s1 = Strategy.new(player1)
    s2 = Strategy.new(player2)
    if s1 >= s2 
      player1
    else
      player2
    end
  end

  def self.tournament_winner(tournament)
    if ['R','P','S'].include?(tournament[0][1]) && ['R','P','S'].include?(tournament[1][1]) then return self.winner(*tournament) end
    self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
  end

  private
  class Strategy
    include Comparable
    attr_accessor :name, :rps

    def initialize(i_array)
      if !['R','P','S'].include?(i_array[1]) then raise NoSuchStrategyError, "Strategy must be one of R,P,S" end
      @name = i_array[0]
      @rps = i_array[1]
    end
    def <=>(another_strategy)
      if self.rps == another_strategy.rps
        0
      elsif (self.rps == 'R' && another_strategy.rps == 'P') || (self.rps == 'P' && another_strategy.rps == 'S') || (self.rps == 'S' && another_strategy.rps == 'R')
        -1
      else
        1
      end
    end
  end

end
