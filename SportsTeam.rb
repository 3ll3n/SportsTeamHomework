class SportsTeam 

  attr_accessor :teamname, :players, :coach

  def initialize(teamname, players, coach)

    @teamname = teamname
    @players = players
    @coach = coach

  end

  def add_player(player)
    return @players.push(player)
  end


end