require 'sinatra'
require './lib/cantidad'

enable :sessions

get '/' do
  erb :inicio
end

get '/inicio' do
  erb :inicio
end

post '/calcular' do
  cantidad = Cantidad.new
  session["cantidad"] = cantidad.validaCantidad params["cantidad"]
  erb :calcular
enable :sessions
get '/' do
  erb :index
end
post '/valida' do
  session['numero'] = params['numero']
  erb :index
end

post '/tirar' do
  session['resultado']=2
  erb :resultado
end
