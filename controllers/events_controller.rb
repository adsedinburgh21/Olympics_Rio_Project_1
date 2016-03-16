### require models

require_relative( '../models/event.rb' )
require_relative( '../models/athlete.rb' )

get '/events' do
  @events = Event.all
  erb( :"events/index")
end

get '/events/:id' do
  @event = Event.find(params[:id])
  erb( :"events/show")
end