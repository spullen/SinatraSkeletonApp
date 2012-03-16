require 'bundler/setup'
require 'sinatra/base'
require 'sinatra/contrib'
require 'sinatra/static_assets'

class SinatraTest < Sinatra::Base
  register Sinatra::StaticAssets
  
  configure :development do
    register Sinatra::Reloader
  end
  
  SITE_TITLE = "Sinatra Test"
  
  #set :sessions, true
  set :haml, :format => :html5

  get '/' do
    haml :index
  end

  not_found do
    @title = '404 - Page Not Found'
    haml :'404', :layout => false
  end
  
end

at_exit { SinatraTest.run! if $!.nil? && SinatraTest.run? }

