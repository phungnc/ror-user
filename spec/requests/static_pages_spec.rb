require 'spec_helper'

describe "StaticPages" do

  subject {page}

  shared_examples_for "all static pages" do 
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading) { 'Picat CMS' }
    let(:page_title) { '' }
    it_should_behave_like "all static pages"
  end


  describe "About page" do
    before { visit about_path }
    it { should have_content('About Us') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path } 
    let(:heading) { 'Contact' }
    let(:page_title) { 'Contact' }
    it_should_behave_like "all static pages"
  end

  # test links on layout
  it "should have the right links on the layout" do

    visit root_path
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))

  end

end
