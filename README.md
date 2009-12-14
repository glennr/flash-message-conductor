== Flash Message Conductor

A simple pattern for managing flash messages in your Ruby on Rails application.

=== Installation

==== Gem

  In environment.rb;

    gem 'glennr-flash-message-conductor'
  
    config.gem 'glennr-flash-message-conductor', :lib => 'flash-message-conductor', :source => 'http://gemcutter.org', :version => ">=1.1"

==== Plugin

  script/plugin install git://github.com/glennr/flash-message-conductor.git

== Example

# Controller helpers

add_info( 'foo' )

is the equivalent of

flash[:info] = 'foo'

Controller helpers included:

add_success( message )
add_info( message )
add_warning( message )
add_error( message )

add_message( message ) # alias for add_success
add_notice( message ) #alias for add_info

# View helpers

<%= render_flash_messages %>

produces:

<div id="flash_messages">
  <div class="info">You have successfully done XYZ...</p>
</div>

# or... if you set an error

<div id="flash_messages">
  <p class="error">Oops! Something went bonkers!</p>
</div>

Copyright (c) 2008 Planet Argon, released under the MIT license
