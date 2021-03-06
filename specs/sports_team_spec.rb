require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../SportsTeam")

class SportsTeamSpec < Minitest::Test

  def setup

    @team = SportsTeam.new("Disney Rovers", ["Jasmine", "Cinderella", "Belle"], "Ursula", 0) 
  end

  def test_return_teamname
    assert_equal("Disney Rovers", @team.teamname)
  end

  def test_change_coach_name
    @team.coach = "Prince Charming"
    assert_equal("Prince Charming", @team.coach)
  end

  def test_add_player
    assert_equal(3, @team.players.length)
    @team.add_player("Snow White")
    assert_equal(4, @team.players.length)
  end

  def test_check_player_available
    assert_equal(false, @team.check_player_available( "Captain Hook" ))
    assert_equal(true, @team.check_player_available( "Cinderella" ))
  end

  def test_team_result_win
    @team.record_result(true)
    assert_equal(1, @team.points())
  end

  def test_team_result_lose
    @team.record_result(false)
    assert_equal(0, @team.points())
  end
    
end
