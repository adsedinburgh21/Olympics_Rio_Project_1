class Olympic

  def initialize( options )
    @nations = options['nations']
    @athletes = options['athletes']
    @events = options['events']
  end

  def total_gold( nation )
    total = @events.select {|event| event.win_gold?( nation )}
    return total.length
  end

  def total_silver( nation )
    total = @events.select {|event| event.win_silver?( nation )}
    return total.length
  end

  def total_bronze( nation )
    total = @events.select {|event| event.win_bronze?( nation )}
    return total.length
  end



  # def athlete_total_gold( athlete_id )
  #   golds = @events.select { |event| event.win_gold?(athlete_id) }
  #   return golds.length
  # end


end