### require models

require_relative( '../models/nation.rb' )
require_relative( '../models/athlete.rb' )

get '/nations' do
  @nations = Nation.all
  @athletes = Athlete.all
  erb( :"nations/index")
end

get '/nations/:id' do
  @nation = Nation.find(params[:id])
  erb( :"nations/show")
end
