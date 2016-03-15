require_relative( './athlete.rb' )
require_relative( './nation.rb' ) ### not needed yet 
require_relative( '../db/sql_db.rb' )
require( 'pg' )


class Event

  attr_reader :id, :gold_id, :silver_id, :bronze_id, :name

  def initialize( options )
    @id = options[ 'id' ]
    @name = options[ 'name' ]
    @gold_athlete_id = options[ 'gold_athlete_id' ]
    @silver_athlete_id = options[ 'silver_athlete_id' ]
    @bronze_athlete_id = options[ 'bronze_athlete_id' ]
  end

  def self.all
    sql = "SELECT * FROM events"
    events = SqlDB.run( sql )
    return events.map {|event| Event.new(event)}
  end

  def self.create( options )
    sql = "INSERT INTO events (
      name,
      gold_athlete_id,
      silver_athlete_id,
      bronze_athlete_id) VALUES (
      '#{options['name']}',
      '#{options['gold_athlete_id']}',
      '#{options['silver_athlete_id']}',
      '#{options['bronze_athlete_id']}' )"
    SqlDB.run( sql )
    return Event.new( Event.last_entry )
  end

  def self.last_entry
    sql = "SELECT * FROM events ORDER BY id DESC limit 1;"
    return SqlDB.run( sql ).first()
  end


  def gold_medalist
    sql = "SELECT * FROM athletes WHERE id = #{@gold_athlete_id}"
    gold = SqlDB.run( sql )
    return Athlete.new( gold[0] )
  end

  def silver_medalist
    sql = "SELECT * FROM athletes WHERE id = #{@silver_athlete_id}"
    silver = SqlDB.run( sql )
    return Athlete.new( silver[0] )
  end

  def bronze_medalist
    sql = "SELECT * FROM athletes WHERE id = #{@bronze_athlete_id}"
    bronze = SqlDB.run( sql )
    return Athlete.new( bronze[0] )
  end

  # def medalist( medal_id )
  #   sql = "SELECT * FROM athletes WHERE id = #{medal_id}"
  #   bronze = SqlDB.run( sql )
  #   Athlete.new( bronze[0] )
  # end
  # # #### This is me trying to refactor the gold/silver/bronze_medalist - worry about that later.

  def win_gold?( nation_id )
    return true if nation_id == gold_medalist.nation.id
  end

  def win_silver?( nation_id )
    return true if nation_id == silver_medalist.nation.id
  end

  def win_bronze?( nation_id )
    return true if nation_id == bronze_medalist.nation.id
  end

#### Could use 'athlete_win_gold?' below in same way as the versions above where pass nation_id, so then could find out if athlete won gold, then in olympic could make method to count number of golds for an athlete. (although at the moment it can only be 1 because of one to many relationship between athlete and event - athlete can only be in 1 event)
  def athlete_win_gold?( athlete )
    if athlete.id == gold_medalist.id
      return true
    end
  end
  #### Instead of returning true can I return @name which will be the name of the event the athlete has won gold in. then in olympic.rb could do event.select {|event| event.athlete_win_gold} and I would have an array of all the events that athlete won. can do same for silver and bronze then will have a record of all medals won by individual athlete.




#### The athlete stuff below is not needed for now. This would let me loop through the events and get all golds for athlete. I think @gold_althlete_id below is the same as the gold_medalist.id in above method athlete_win_gold? Work out what is better to use.
  # def win_gold?( athlete_id )
  #   return true if @gold_athlete_id == athlete_id
  # end

  # def win_silver?( athlete_id)
  #   return true if @silver_athlete_id == athlete_id
  # end

  # def win_bronze?( athlete_id)
  #   return true if @bronze_athlete_id == athlete_id
  # end
  # def win_medal?( athlete_id, medal_id)
  #   return true if athlete_id == medal_id    
  # end
  # #### This is me trying to refactor the win_gold/silver/bronze? - not essential, worry about that later.





  # def nation_gold( athlete )
  #   if win_gold?(athlete) == true
  #     athlete.nation 
  # end
  
  # def nation_silver( athlete )
  #   if win_silver?(athlete) == true
  #     athlete.nation 
  # end

  # def nation_bronze( athlete )
  #   if win_bronze?(athlete) == true
  #     athlete.nation 
  # end



end
