### require models

require_relative( '../models/event.rb' )
require_relative( '../models/athlete.rb' )

get '/events' do
  if params['search']
    @events = Event.search( params['search'] )
  else
    @events = Event.alphabetical
  end
  erb( :"events/index")
end

get '/events/:id' do
  @event = Event.find(params[:id])
  erb( :"events/show")
end