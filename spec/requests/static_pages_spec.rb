require 'spec_helper'

describe "Static pages" do
  
  let(:base_title) { "Jooga" }

  describe "Home page" do

    it "should have the content 'Jooga App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Jooga App')
    end
    
    it "should have the title 'base_title'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end
  end
  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    
    it "should have the title 'help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | help")
    end
  end
  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
    
    it "should have the title 'about'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | about")
    end
  end
  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
    
    it "should have the title 'contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | contact")
    end
  end
end
