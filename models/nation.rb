require_relative( '../db/sql_db.rb' )


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






end