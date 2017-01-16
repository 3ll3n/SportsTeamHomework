require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../SportsTeam")

class SportsTeamSpec < Minitest::Test

  def setup

    @team = SportsTeam.new("Disney Rovers", ["Jasmine", "Cinderella", "Belle"], "Ursula") 
  end

  def test_return_teamname
    assert_equal("Disney Rovers", @team.teamname)
  end

  def test_change_coach_name
    @team.coach = "Prince Charming"
    assert_equal("Prince Charming", @team.coach)
  end

end

  


  # Create a method that adds a new player to the player's array.

  # Add a method that takes in a string of a player's name and checks to see if they are in the players array.

  # Add a points property into your class that starts at 0.
  # Create a method that takes in whether the team has won or lost and updates the points property for a win.