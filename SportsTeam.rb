class SportsTeam 

  attr_accessor :teamname, :players, :coach, :points

  def initialize(teamname, players, coach, points)

    @teamname = teamname
    @players = players
    @coach = coach
    @points = points

  end

  def add_player(player)
    return @players.push(player)
  end

  def check_player_available(search_player)
  
    for player in @players
      if player == search_player
        return true
      end
    end
    
    return false
  end

  def record_result(win)
    if win
      return @points += 1
    end
  end 

end