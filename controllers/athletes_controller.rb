### require models
require_relative( '../models/athlete.rb' )

get '/athletes' do
  @athletes = Athlete.all
  erb( :"athletes/index")
end

get '/athletes/:id' do
  @athlete = Athlete.find(params[:id])
  erb( :"athletes/show")
end