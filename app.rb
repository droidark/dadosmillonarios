require 'sinatra'
require './lib/cantidad'
require './lib/apuesta'

enable :sessions
#use Rack::Session::Pool, :expire_after=>259200
get '/' do
  erb :index
end

get '/inicio' do
  erb :inicio
end

post '/calcular' do
  cantidad = Cantidad.new
  session["cantidad"] = cantidad.validaCantidad params["cantidad"]
  erb :index
end

post '/valida' do
  session['numero'] = params['numero']
  erb :index
end

post '/tirar' do
  numero = Apuesta.new
  session['resultado'] = numero.tirarDados  false
  session['statusGame'] = numero.validarPartida session['resultado']
  erb :resultado
end
