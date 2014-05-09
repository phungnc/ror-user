require 'spec_helper'

describe "StaticPages" do


  describe "Home page" do

    it "should have the content 'Picat CMS' " do
      visit '/static_pages/home'
      expect(page).to have_content('Picat CMS')
    end

  end


  describe "About page" do
    it "should have the content 'About Us' " do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have the title 'About Us' " do

      visit '/static_pages/about'
      expect(page).to have_title('Picat CMS | About Us')
    end
  end

  describe "Contact page" do
    it "should have the content 'Contact' " do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
    it "should have the title 'Contact' " do
      visit '/static_pages/contact'
      expect(page).to have_title('Picat CMS | Contact')
    end
  end


end
