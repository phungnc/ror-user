require 'spec_helper'

describe "StaticPages" do

  subject {page}

  describe "Home page" do
    before { visit root_path }
    it {should have_content('Picat CMS')}
  end


  describe "About page" do
    before { visit about_path }
    it { should have_content('About Us') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end


end
