# require 'selenium-webdriver'
#
# driver = Selenium::WebDriver.for :firefox

# Given(/^We navigate to the task index view$/) do
#   # driver.navigate.to("localhost:3000/tasks")
#   visit(root_path)
#   puts "Anything -- I don't..."
# end

# When(/^We are there$/) do
#
# end
#
# Then(/^We see a list of task names and descriptions$/) do
#   wait = Selenium::Webdriver::Wait.new(:timeout => 5)
#   begin
#     element = wait.until { driver.find_element({class: "tasks"}) }
#     expect(element.text).to eq("Tasks")
#   ensure
#     driver.quit
#   end
# end

When(/^I go to the homepage$/) do
 visit root_path
end

Then(/^I should see the welcome message$/) do
 expect(page).to have_content("Hello Cucumber")
end

#
# Feature: Task index
# Scenario:
#   Given We navigate to the task index view
#   When We are there
#   Then We see a list of task names and descriptions
