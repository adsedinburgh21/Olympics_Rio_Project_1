class Olympic

  def initialize( options )
    @nations = options['nations']
    @athletes = options['athletes']
    @events = options['events']
  end

  def total_gold( athlete_id )
    golds = @events.select { |event| event.win_gold?(athlete_id) }
    return golds.length
  end


end