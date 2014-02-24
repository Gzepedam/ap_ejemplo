require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit root_path
      page.should have_selector('h1', :text=> 'Sample App')
    end
    it "debe tener el titulo basico" do
      visit root_path
      page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
    end
    it "no debe tener titulo propio" do
      visit root_path
      page.should_not have_selector('title', :text => '| Home')
    end
  end
  describe "Help Page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end
  end
  describe "About Page" do
    it "should have the content 'About'" do
      visit about_path
      page.should have_content('About')
    end
  end
  describe "Contact Page" do
    it "should have the h1 'Contact'" do
      visit contacat_path
      page.should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Contact" )
    end
  end
end
