require 'spec_helper'

describe "StaticPages" do
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  describe "Home page" do
    it "should have the content 'Home Page'" do
      visit '/static_pages/home'
      expect(page).to have_content('Home Page')
    end
    it "should have the title base title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end
  describe "Help page" do
    it "should have the content 'Help Page'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help Page')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end	
  describe "About page" do
    it "should have the content 'About Us Page'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us Page')
    end
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end
  describe "Contact page" do
    it "should have the content 'Contact Page'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Page')
    end
    it "should have the title 'Contact')" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
