When(/^я перехожу на "([^"]*)"$/) do |arg|
  case
    when arg == 'главная страница'
      visit '/'
  end
end

When(/^я вижу текст "([^"]*)"$/) do |text|
  expect(page).to have_content("#{text}", wait: 10)
end