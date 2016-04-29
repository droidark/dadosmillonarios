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
end
