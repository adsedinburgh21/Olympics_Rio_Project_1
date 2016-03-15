require( 'pry-byebug' )


class Olympic

  attr_reader :nations, :athletes, :events

  def initialize( options )
    @nations = options['nations']
    @athletes = options['athletes']
    @events = options['events']
  end

  def total_gold( nation_id )
    total = @events.select {|event| event.win_gold?( nation_id )}
    return total.length
  end

  def total_silver( nation_id )
    total = @events.map {|event| event.win_silver?( nation_id )}
    return total.length
  end

  def total_bronze( nation_id )
    total = @events.select {|event| event.win_bronze?( nation_id )}
    return total.length
  end


  # def athlete_total_gold( athlete_id )
  #   golds = @events.select { |event| event.win_gold?(athlete_id) }
  #   return golds.length
  # end


end