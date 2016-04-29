require 'sinatra'
require './lib/cantidad'
require './lib/apuesta'

enable :sessions

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
  apuesta=Apuesta.new
  session['resultado']=apuesta.tirarDados true
  erb :index
end
