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

  it 'creates a portfolio item' do
    @browser.create_portfolio_item
    expect().to eq(true)
end