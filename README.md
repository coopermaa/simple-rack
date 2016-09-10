# simple-rack

A rack example application with a simple custom Builder DSL and rackup tool.

## How to run the application

config.ru:

```ruby
require "greeter"
require "upcase"
require "builder"

use Rack::Reloader, 0
use Rack::ShowExceptions
use Rack::Lint
use Upcase

run Greeter.new
```

Here we use our own Builder (not Rack::Builder) DSL to construct an application. 

To run the application, type:

```
$ bin/rackup config.ru
```

The bin/rackup is also custom made.

## Deploying to Heroku

```sh
$ heroku create
$ git push heroku master
$ heroku open
```