Given(/^inicia la aplicacion$/) do
  visit '/inicio'
end

When(/^ingreso "(.*?)"$/) do |cantidad|
  fill_in(cantidad, :with => cantidad)
end

Then(/^deseo ver "(.*?)"$/) do |validar|
    click_button(validar)
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
