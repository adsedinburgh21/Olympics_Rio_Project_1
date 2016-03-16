require_relative( '../db/sql_db.rb' )
require( 'pg' )


class Nation

  attr_reader :id, :name, :flag

  def initialize( options )
    @id = options['id']
    @name = options['name']
    @flag = options['flag']
  end

  def self.all
    sql = "SELECT * FROM nations"
    nations = SqlDB.run( sql )
    return nations.map {|nation| Nation.new(nation)}
  end

  def self.create( options )
    sql = "INSERT INTO nations (
      name,
      flag) VALUES (
      '#{options['name']}',
      '#{options['flag']}' )"
    SqlDB.run( sql )
    return Nation.new( Nation.last_entry )
  end

  def self.last_entry
    sql = "SELECT * FROM nations ORDER BY id DESC limit 1;"
    return SqlDB.run( sql ).first
  end

  def self.find(id)
    sql = "SELECT * FROM nations WHERE id = #{id}"
    result = SqlDB.run( sql )
    Nation.new( result[0] )
  end

  def athletes
    sql = "SELECT * FROM athletes WHERE nation_id = #{@id}"
    athletes = SqlDB.run( sql )
    return athletes.map {|athlete| Athlete.new( athlete ) }
  end




end