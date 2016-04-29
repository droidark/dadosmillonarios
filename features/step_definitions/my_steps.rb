Given(/^inicia la aplicacion$/) do
  visit '/inicio'
end

When(/^ingreso "(.*?)"$/) do |cantidad|
  fill_in(cantidad, :with => cantidad)
end

Then(/^deseo ver "(.*?)"$/) do |validar|
    click_button(validar)
end
