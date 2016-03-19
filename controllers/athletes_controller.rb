### require models
require_relative( '../models/athlete.rb' )
require_relative( '../models/nation.rb' )

get '/athletes' do
    @nations = Nation.all
  if params['nation_id']
    @athletes = Athlete.all_from_nation(params['nation_id'])
  elsif params['search']
    @athletes = Athlete.search( params['search'])
  else
    @athletes = Athlete.alphabetical
  end
    erb( :"athletes/index")
end

get '/athletes/:id' do
  @athlete = Athlete.find(params[:id])
  erb( :"athletes/show")
end

get '/athletes/new' do
  erb( :"athletes/new")
end

post '/athletes' do
end