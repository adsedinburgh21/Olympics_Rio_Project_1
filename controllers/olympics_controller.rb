require_relative( '../models/athlete.rb' )
require_relative( '../models/nation.rb' )
require_relative( '../models/event.rb' )
require_relative( '../models/olympic.rb' )

get '/olympics' do
  options = {'nations' => Nation.all, 'events' => Event.all, 'athletes' => Athlete.all}
  @olympic = Olympic.new( options )
  erb(:"olympics/index")
end