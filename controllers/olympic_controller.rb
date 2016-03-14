get '/rio' do
  options = {'nations' => Nation.all, 'events' => Event.all, 'athletes' => Athlete.all}
  @olympic = Olympic.new( options )
  erb(:"olympic/index")
end