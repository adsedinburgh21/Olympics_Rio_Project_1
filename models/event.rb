class Event

  attr_reader :id, :gold_id, :silver_id, :bronze_id, :name

  def initialize( options )
    @id = options[ 'id' ]
    @gold_id = options[ 'gold_id' ]
    @silver_id = options[ 'silver_id' ]
    @bronze_id = options[ 'bronze_id' ]
    @name = options[ 'name' ]
  end

  def self.all
    sql = "SELECT * FROM events"
    events = SqlDB.run( sql )
    return events.map {|event| Event.new(event)}
  end

  def win_gold?( athlete_id )
    return true if @gold_id == athlete_id
  end

  def win_silver?( athlete_id )
    return true if @silver_id == athlete_id
  end

  def win_bronze?( athlete_id )
    return true if @bronze_id == athlete_id
  end

  # def win_medal?( athlete_id, medal_id)
  #   return true if athlete_id == medal_id    
  # end
  ##### This is me trying to refactor the gold/silver/bronze - worry about that later.

  

end
