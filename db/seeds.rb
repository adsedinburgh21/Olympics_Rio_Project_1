require_relative( '../models/nation.rb' )
require_relative( '../models/athlete.rb' )
require_relative( '../models/event.rb' )
require( 'pry-byebug' )
require( 'pg' )


@nation1 = Nation.create( {
  'name' => 'United Kingdom',
  'flag' => 'http://images.nationmaster.com/images/flags/uk-lgflag.gif'
  } )
@nation2 = Nation.create( {
  'name' => 'Jamaica',
  'flag' => 'http://images.nationmaster.com/images/flags/jm-lgflag.gif'
  } )
@nation3 = Nation.create( {
  'name' => 'Canada',
  'flag' => 'http://images.nationmaster.com/images/flags/ca-lgflag.gif'
  } )


@event1 = Event.create( {
  'name' => '100m',
  'gold_athlete_id' => 5,
  'silver_athlete_id' => 2,
  'bronze_athlete_id' => 3
  } )
@event2 = Event.create( {
  'name' => 'Pole Vault',
  'gold_athlete_id' => 4,
  'silver_athlete_id' => 6,
  'bronze_athlete_id' => 1
  } )


athlete1 = Athlete.create( {
  "name" => "Adam Reid",
  'nation_id' => @nation1.id,
  'event_id' => @event2.id
  } )
athlete2 = Athlete.create( {
  'name' => 'Usain Bolt',
  'nation_id' => @nation2.id,
  'event_id' => @event1.id
  } )
athlete3 = Athlete.create( {
  'name' => 'Linford Christie',
  'nation_id' => @nation1.id,
  'event_id' => @event1.id
  } )
athlete4 = Athlete.create( {
  'name' => 'Shawn Hoss',
  'nation_id' => @nation3.id,
  'event_id' => @event2.id
  } )
athlete5 = Athlete.create( {
  'name' => 'George Pierre',
  'nation_id' => @nation3.id,
  'event_id' => @event1.id
  } )
athlete6 = Athlete.create( {
  'name' => 'Bob Marley',
  'nation_id' => @nation2.id,
  'event_id' => @event2.id
  } )


binding.pry
nil