require 'selenium-webdriver'
require 'rspec'
require 'faker'
require_relative 'portfolios'

describe "Creates New Portfolio Item" do
  before(:each) do
    @browser = Portfolios.new
    @browser.setup
  end

  after(:each) do
    @browser.close_browser
  end
end