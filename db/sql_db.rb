require( 'pg' )

class SqlDB

  def self.run( sql )
    begin
      db = PG.connect( { dbname: 'rio', host: 'localhost' } )
      result = db.exec( sql )
    ensure
      db.close
    end
    return result
  end

end