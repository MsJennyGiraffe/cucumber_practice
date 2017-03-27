# require 'selenium-webdriver'

# driver = Selenium::WebDriver.for :firefox

Given(/^We navigate to the task index view$/) do
  visit tasks_path
end

Then(/^We see a list of task names and descriptions$/) do
  expect(page).to have_content("Tasks")
end
