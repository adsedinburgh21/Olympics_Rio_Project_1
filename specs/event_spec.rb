require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../models/athlete.rb' )
require_relative( '../models/nation.rb' )
require_relative( '../models/event.rb' )


class TestEvent < MiniTest::Test

  def setup
    @nation1 = Nation.new( { 'name' => 'United Kingdom', 'id' => 1 } )
    @nation2 = Nation.new( { 'name' => 'Jamaica', 'id' => 2 } )
    @nation3 = Nation.new( { 'name' => 'Canada', 'id' => 3 } )
    @nations = [ @nation1, @nation2, @nation3]


    @athlete1 = Athlete.new( {
      'id' => 1,
      'name' => 'Adam Reid',
      'nation_id' => 1,
      'event_id' => 1
      } )
    @athlete2 = Athlete.new( {
      'id' => 2,
      'name' => 'Usain Bolt',
      'nation_id' => 2,
      'event_id' => 1
      } )
    @athlete3 = Athlete.new( {
      'id' => 3,
      'name' => 'Linford Christie',
      'nation_id' => 1,
      'event_id' => 1
      } )
    @athlete4 = Athlete.new( {
      'id' => 4,
      'name' => 'Shawn Hoss',
      'nation_id' => 3,
      'event_id' => 2
      } )
    @athlete5 = Athlete.new( {
      'id' => 5,
      'name' => 'George Pierre',
      'nation_id' => 3,
      'event_id' => 2
      } )
    @athlete6 = Athlete.new( {
      'id' => 6,
      'name' => 'Bob Marley',
      'nation_id' => 2,
      'event_id' => 2
      } )
    @athletes = [ @athlete1, @athlete2, @athlete3, @athlete4, @athlete5, @athlete6]


    @event1 = Event.new( {
      'id' => 1,
      'name' => '100m',
      'gold_athlete_id' => 1,
      'silver_athlete_id' => 2,
      'bronze_athlete_id' => 3
      } )
    @event2 = Event.new( {
      'id' => 2,
      'name' => 'Pole Vault',
      'gold_athlete_id' => 4,
      'silver_athlete_id' => 5,
      'bronze_athlete_id' => 6
      } )
    @events = [ @event1, @event2]

  end

  def test_win_gold?
    result = @event1.win_gold?( @athlete1 )
    assert_equal( true, result)
  end

  def test_win_silver?
    result = @event1.win_silver?( @athlete2 )
    assert_equal( true, result)
  end

  def test_win_bronze?
    result = @event1.win_bronze?( @athlete3 )
    assert_equal( true, result)
  end
  ##### These tests wont work as they use .win_gold/silver/bronze? which are sql requests. Do I just have to not test these methods?


end