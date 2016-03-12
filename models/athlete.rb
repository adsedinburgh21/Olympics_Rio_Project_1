require_relative( './athlete.rb' )
require_relative( './event.rb' )

class Athlete

  attr_reader :id, :name, :nation_id

  def initialize( options )
    @id = options[ 'id' ]
    @name = options[ 'name' ]
    @nation_id = options[ 'nation_id' ]
    @event_id = options[ 'event_id' ]
  end

  def self.all
    sql = "SELECT * FROM athletes"
    athletes = SqlDB.run( sql )
    return athletes.map {|athlete| Athlete.new(athlete)}
  end

  def nation
    sql = "SELECT * FROM nations WHERE id = @nation_id"
    nation = SqlDB.run( sql )
    return Nation.new( nation[0] )
  end

  def event
    sql = "SELECT * FROM events WHERE id = @event_id"
    event = SqlDB.run( sql )
    return Event.new( event[0] )
  end

  def compete_in?( event_id )
    return true if event == event_id 
  end


end