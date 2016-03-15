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
    total = @events.select {|event| event.win_silver?( nation_id )}
    return total.length
  end

  def total_bronze( nation_id )
    total = @events.select {|event| event.win_bronze?( nation_id )}
    return total.length
  end

  def total_points( nation_id )
    points = (total_gold( nation_id ) *5 ) + ( total_silver( nation_id ) *3 ) + total_bronze( nation_id )
    return points
  end

  # def athlete_total_gold( athlete_id )
  #   golds = @events.select { |event| event.win_gold?(athlete_id) }
  #   return golds.length
  # end


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

  def order_nations_by_points_two
    points = @nations.map do |nation|
      {id: nation.id, name: nation.name, points: total_points(nation.id)}
    end
    ordered = points.sort_by { |nation| nation[:points] }
    return ordered.reverse
  end

  # def nations_sorted_by_points
  #   points = { }
  #   @events.each do |event| 
  #     country = event.gold_nation
  #     if points[country]
  #       points[country] += 5
  #     else
  #       points[country] = 5
  #     end
  #     country = event.silver_nation
  # end

end