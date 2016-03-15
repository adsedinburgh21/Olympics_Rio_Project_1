## Sinatra
## Controllers

require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require_relative( 'controllers/olympics_controller.rb' )
require_relative( 'controllers/events_controller.rb' )
require_relative( 'controllers/nations_controller.rb' )
require_relative( 'controllers/athletes_controller.rb' )


