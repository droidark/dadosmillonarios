require 'sinatra'
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
