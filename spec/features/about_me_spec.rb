require 'spec_helper'

describe 'about_me', type: :feature do

  before do
    visit 'about_me.html'
  end

  it "displays 'About Me' within h2 tag" do
    expect(page).to have_selector 'h2'
    within 'h2' do
      expect(page).to have_content 'About Me'
    end
  end

  it 'displays text within paragraph' do
    expect(page).to have_selector '.tm-paragraph'
    within '.tm-paragraph' do
      expect(page).to have_content 'My name'
    end
  end

  it 'displays profile picture' do
    expect(page).to have_css 'img[src*="calle.jpg"]'
  end
end
