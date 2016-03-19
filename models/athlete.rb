require_relative( './nation.rb' )
require_relative( './event.rb' )
require_relative( '../db/sql_db.rb' )
require( 'pg' )

class Athlete

  attr_reader :id, :name, :nation_id, :event_id

  def initialize( options )
    @id = options[ 'id' ]
    @name = options[ 'name' ]
    @nation_id = options[ 'nation_id' ].to_i
    @event_id = options[ 'event_id' ].to_i
  end

  def self.all
    sql = "SELECT * FROM athletes"
    athletes = SqlDB.run( sql )
    return athletes.map {|athlete| Athlete.new(athlete)}
  end

  def self.alphabetical
    self.all.sort_by! { |athlete| athlete.name}
  end

  def self.create( options )
    sql = "INSERT INTO athletes (
      name, nation_id, event_id) 
      VALUES ('#{options['name']}', 
               #{options['nation_id']}, 
               #{options['event_id']} )"
    SqlDB.run( sql )
    return Athlete.new( Athlete.last_entry )
  end

  def self.last_entry
    sql = "SELECT * FROM athletes ORDER BY id DESC limit 1;"
    return SqlDB.run( sql ).first
  end

  def self.find(id)
    sql = "SELECT * FROM athletes WHERE id = #{id}"
    result = SqlDB.run( sql )
    Athlete.new( result[0] )
  end

  def self.all_from_nation( id_of_nation )
    sql = "SELECT * FROM athletes WHERE nation_id = #{id_of_nation}"
    athletes = SqlDB.run( sql )
    result = athletes.map { |athlete| Athlete.new(athlete) }
    return result.sort_by! {|athlete| athlete.name}
  end

  def self.search( search )
    sql = "SELECT * FROM athletes WHERE name LIKE '%#{search}%'"
    athletes = SqlDB.run( sql )
    athletes.map { |athlete| Athlete.new( athlete ) }
  end

  def nation
    sql = "SELECT * FROM nations WHERE id = #{@nation_id}"
    nation = SqlDB.run( sql )
    return Nation.new( nation[0] )
  end

  def event
    sql = "SELECT * FROM events WHERE id = #{@event_id}"
    event = SqlDB.run( sql )
    return Event.new( event[0] )
  end




# def order_nations_by_points
#   points = { }
#   @nations.each do |nation|
#     points[nation] = total_points( nation.id )
#   end
#   ordered = points.sort_by { |nation, points| points }.reverse
#     @array = []
#   ordered.map {|new_nation| @array.push(new_nation[0]) }
#   return @array
# end



end