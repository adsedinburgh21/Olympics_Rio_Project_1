### require models

require_relative( '../models/nation.rb' )
require_relative( '../models/athlete.rb' )

get '/nations' do
  if params['search']
    @nations = Nation.search( params['search'] )
  else
    @nations = Nation.alphabetical
  end
  erb( :"nations/index")
end

get '/nations/:id' do
  @nation = Nation.find(params[:id])
  erb( :"nations/show")
end
