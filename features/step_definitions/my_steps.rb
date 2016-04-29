Given(/^inicia la aplicacion$/) do
  visit '/'
end

When(/^selecciona un "(.*?)"$/) do |text|
  select(text,:form=>'numero')

end

When(/^haga click$/) do
  click_button('elegir')
end
Then(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^haga click en tirar dados$/) do

  click_button('tirar')
  
end
