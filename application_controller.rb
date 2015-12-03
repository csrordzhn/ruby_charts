require 'sinatra/base'
#require 'slim'
require 'chartkick'
require 'haml'

class ApplicationController < Sinatra::Base

	set :views, File.expand_path('../views', __FILE__)
	set :public_folder, File.expand_path('../public', __FILE__)

	get '/' do
		'rubycharts is up and Running'
	end

	get '/dataviz' do
		@country_data = { HON: 42, CRI: 39, GUA: 35, ESA: 25, NIC: 23 }
		@nthu_data = [['Bayardo',1],['Ingrid',2],['Cesar',3]]
		@vg_data = [['PS4',1345],['XB1',1295],['WiiU',843]]
		#slim :dataviz
		haml :dataviz
	end

end
