require_relative( '../models/nation.rb' )
require_relative( '../models/athlete.rb' )
require_relative( '../models/event.rb' )
require( 'pry-byebug' )
require( 'pg' )

## NATIONS ##
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
@nation4 = Nation.create( {
  'name' => 'U.S.A',
  'flag' => 'http://images.nationmaster.com/images/flags/us-lgflag.gif'
  } )
@nation5 = Nation.create( {
  'name' => 'China',
  'flag' => 'http://images.nationmaster.com/images/flags/ch-lgflag.gif'
  } )
@nation6 = Nation.create( {
  'name' => 'South Korea',
  'flag' => 'http://images.nationmaster.com/images/flags/ks-lgflag.gif'
  } )
@nation7 = Nation.create( {
  'name' => 'Russia',
  'flag' => 'http://images.nationmaster.com/images/flags/rs-lgflag.gif'
  } )
@nation8 = Nation.create( {
  'name' => 'Germany',
  'flag' => 'http://images.nationmaster.com/images/flags/gm-lgflag.gif'
  } )
@nation9 = Nation.create( {
  'name' => 'France',
  'flag' => 'http://images.nationmaster.com/images/flags/fr-lgflag.gif'
  } )
@nation10 = Nation.create( {
  'name' => 'Italy',
  'flag' => 'http://images.nationmaster.com/images/flags/it-lgflag.gif'
  } )
@nation11 = Nation.create( {
  'name' => 'Hungry',
  'flag' => 'http://images.nationmaster.com/images/flags/hu-lgflag.gif'
  } )
@nation12 = Nation.create( {
  'name' => 'Australia',
  'flag' => 'http://images.nationmaster.com/images/flags/as-lgflag.gif'
  } )

## EVENTS ##
@event1 = Event.create( {
  'name' => '100m',
  'gold_athlete_id' => 1,
  'silver_athlete_id' => 4,
  'bronze_athlete_id' => 9
  } )
@event2 = Event.create( {
  'name' => 'Weightlifting',
  'gold_athlete_id' => 2,
  'silver_athlete_id' => 11,
  'bronze_athlete_id' => 24
  } )
@event3 = Event.create( {
  'name' => '200m',
  'gold_athlete_id' => 3,
  'silver_athlete_id' => 8,
  'bronze_athlete_id' => 5
  } )
@event4 = Event.create( {
  'name' => 'Long Jump',
  'gold_athlete_id' => 22,
  'silver_athlete_id' => 19,
  'bronze_athlete_id' => 6
  } )
@event5 = Event.create( {
  'name' => 'Keirin Cycling',
  'gold_athlete_id' => 29,
  'silver_athlete_id' => 12,
  'bronze_athlete_id' => 23
  } )
@event6 = Event.create( {
  'name' => 'Diving',
  'gold_athlete_id' => 15,
  'silver_athlete_id' => 18,
  'bronze_athlete_id' => 26
  } )
@event7 = Event.create( {
  'name' => 'Table Tennis',
  'gold_athlete_id' => 13,
  'silver_athlete_id' => 30,
  'bronze_athlete_id' => 27
  } )
@event8 = Event.create( {
  'name' => 'Archery',
  'gold_athlete_id' => 20,
  'silver_athlete_id' => 7,
  'bronze_athlete_id' => 14
  } )
@event9 = Event.create( {
  'name' => 'Pole Vault',
  'gold_athlete_id' => 16,
  'silver_athlete_id' => 28,
  'bronze_athlete_id' => 10
  } )
@event10 = Event.create( {
  'name' => 'Boxing',
  'gold_athlete_id' => 17,
  'silver_athlete_id' => 21,
  'bronze_athlete_id' => 25
  } )


#ATHLETES##
## UK ##
athlete1 = Athlete.create( {
  'name' => 'Adam Reid',
  'nation_id' => @nation1.id,
  'event_id' => @event1.id
  } )
athlete2 = Athlete.create( {
  'name' => 'Ally Bennett',
  'nation_id' => @nation1.id,
  'event_id' => @event2.id
  } )
athlete3 = Athlete.create( {
  'name' => 'Murray Johnstone',
  'nation_id' => @nation1.id,
  'event_id' => @event3.id
  } )

## Jamaica ##
athlete4 = Athlete.create( {
  'name' => 'Usain Brown',
  'nation_id' => @nation2.id,
  'event_id' => @event1.id
  } )
athlete5 = Athlete.create( {
  'name' => 'Levon Roberts',
  'nation_id' => @nation2.id,
  'event_id' => @event3.id
  } )

## Canada ##
athlete6 = Athlete.create( {
  'name' => 'George Pierre',
  'nation_id' => @nation3.id,
  'event_id' => @event4.id
  } )
athlete7 = Athlete.create( {
  'name' => 'Shawn Hoss',
  'nation_id' => @nation3.id,
  'event_id' => @event8.id
  } )

## USA ##
athlete8 = Athlete.create( {
  'name' => 'Brad Steelman',
  'nation_id' => @nation4.id,
  'event_id' => @event3.id
  } )
athlete9 = Athlete.create( {
  'name' => 'Chad Logan',
  'nation_id' => @nation4.id,
  'event_id' => @event1.id
  } )
athlete10 = Athlete.create( {
  'name' => 'Deshawn Lawrence',
  'nation_id' => @nation4.id,
  'event_id' => @event9.id
  } )

## China ##
athlete11 = Athlete.create( {
  'name' => 'Feng Chang',
  'nation_id' => @nation5.id,
  'event_id' => @event2.id
  } )
athlete12 = Athlete.create( {
  'name' => 'Xio Gang',
  'nation_id' => @nation5.id,
  'event_id' => @event5.id
  } )
athlete13 = Athlete.create( {
  'name' => 'Li Bo Jian',
  'nation_id' => @nation5.id,
  'event_id' => @event7.id
  } )

## South Korea ##
athlete14 = Athlete.create( {
  'name' => 'Jae Hyeon',
  'nation_id' => @nation6.id,
  'event_id' => @event8.id
  } )
athlete15 = Athlete.create( {
  'name' => 'Hyuk Gyeong',
  'nation_id' => @nation6.id,
  'event_id' => @event6.id
  } )

## Russia ##
athlete16 = Athlete.create( {
  'name' => 'Vladik Merikov',
  'nation_id' => @nation7.id,
  'event_id' => @event9.id
  } )
athlete17 = Athlete.create( {
  'name' => 'Fedor Levitin',
  'nation_id' => @nation7.id,
  'event_id' => @event10.id
  } )
athlete18 = Athlete.create( {
  'name' => 'Pyotr Stanislav',
  'nation_id' => @nation7.id,
  'event_id' => @event6.id
  } )

## Germany ##
athlete19 = Athlete.create( {
  'name' => 'Sebastian Krieger',
  'nation_id' => @nation8.id,
  'event_id' => @event4.id
  } )
athlete20 = Athlete.create( {
  'name' => 'Julian Balnuweit',
  'nation_id' => @nation8.id,
  'event_id' => @event8.id
  } )
athlete21 = Athlete.create( {
  'name' => 'Pascal Holzdeppe',
  'nation_id' => @nation8.id,
  'event_id' => @event10.id
  } )

## France ##
athlete22 = Athlete.create( {
  'name' => 'Pierre Durand',
  'nation_id' => @nation9.id,
  'event_id' => @event4.id
  } )
athlete23 = Athlete.create( {
  'name' => 'Jacques Bonnet',
  'nation_id' => @nation9.id,
  'event_id' => @event5.id
  } )
athlete24 = Athlete.create( {
  'name' => 'Loic Leroux',
  'nation_id' => @nation9.id,
  'event_id' => @event2.id
  } )

## Italy ##
athlete25 = Athlete.create( {
  'name' => 'Luciano De Campo',
  'nation_id' => @nation10.id,
  'event_id' => @event10.id
  } )
athlete26 = Athlete.create( {
  'name' => 'Francesco Riccetti',
  'nation_id' => @nation10.id,
  'event_id' => @event6.id
  } )

## Hungry ##
athlete27 = Athlete.create( {
  'name' => 'Zoltan Papp',
  'nation_id' => @nation11.id,
  'event_id' => @event7.id
  } )
athlete28 = Athlete.create( {
  'name' => 'Kristof Szabo',
  'nation_id' => @nation11.id,
  'event_id' => @event9.id
  } )

## Australia ##
athlete29 = Athlete.create( {
  'name' => 'Angus King',
  'nation_id' => @nation12.id,
  'event_id' => @event5.id
  } )
athlete30 = Athlete.create( {
  'name' => 'Benn Samuels',
  'nation_id' => @nation12.id,
  'event_id' => @event7.id
  } )

## Leave binding.pry below so that when run seeds we can see in terminal that it has worked with no error. Binding.pry needs something after it for it to work hence the nil on the line below it.
binding.pry
nil