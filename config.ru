require "greeter"
require "upcase"
require "builder"

use Rack::Reloader, 0
use Rack::ShowExceptions
use Rack::Lint
use Upcase

run Greeter.new
