require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../models/athlete.rb' )
require_relative( '../models/nation.rb' )
require_relative( '../models/event.rb' )
require_relative( '../models/olympic.rb' )



class TestOlympic < MiniTest::Test

  def setup

    @nation1 = Nation.new( { 'name' => 'United Kingdom', 'id' => 1 } )
    @nation2 = Nation.new( { 'name' => 'Jamaica', 'id' => 2 } )
    @nation3 = Nation.new( { 'name' => 'Canada', 'id' => 3 } )
    @nations = [ @nation1, @nation2]


    @athlete1 = Athlete.new( {
      'id' => 1,
      'name' => 'Adam Reid',
      'nation_id' => @nation1.id,
      'event_id' => @event1.id
      } )
    @athlete2 = Athlete.new( {
      'id' => 2,
      'name' => 'Usain Bolt',
      'nation_id' => @nation2.id,
      'event_id' => @event1.id
      } )
    @athlete3 = Athlete.new( {
      'id' => 3,
      'name' => 'Linford Christie',
      'nation_id' => @nation1.id,
      'event_id' => @event1.id
      } )
    @athlete4 = Athlete.new( {
      'id' => 4,
      'name' => 'Shawn Hoss',
      'nation_id' => @nation3.id,
      'event_id' => @event2.id
      } )
    @athlete5 = Athlete.new( {
      'id' => 5,
      'name' => 'George Pierre',
      'nation_id' => @nation3.id,
      'event_id' => @event2.id
      } )
    @athlete6 = Athlete.new( {
      'id' => 6,
      'name' => 'Bob Marley',
      'nation_id' => @nation2.id,
      'event_id' => @event2.id
      } )
    @athletes = [ @athlete1, @athlete2, @athlete3, @athlete4, @athlete5, @athlete6]


    @event1 = Event.new( {
      'id' => 1,
      'name' => '100m',
      'gold_id' => @athlete1.id,
      'silver_id' => @athlete2.id,
      'bronze_id' => @athlete3.id
      } )
    @event2 = Event.new( {
      'id' => 2,
      'name' => 'Pole Vault',
      'gold_id' => @athlete4.id,
      'silver_id' => @athlete5.id,
      'bronze_id' => @athlete6.id
      } )
    @events = [ @event1, @event2]


    options = {
      'nations' => @nations,
      'athletes' => @athletes,
      'events' => @events
      }
    @olympic = Olympic.new( options )

  end


  def test_total_gold( nation_id )
    result = 
    
  end




end