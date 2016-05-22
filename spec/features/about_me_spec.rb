require 'spec_helper'

describe 'about_me', type: :feature do

  before do
    visit 'about_me.html'
  end

  it 'displays h2 content' do
    expect(page).to have_selector 'h2'
    within 'h2' do
      expect(page).to have_content 'About Me'
    end
  end
end
