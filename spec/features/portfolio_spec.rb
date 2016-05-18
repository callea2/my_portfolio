require 'spec_helper'

describe 'portfolio', type: :feature do

  before do
    visit 'portfolio.html'
  end

  it 'displays yml content' do
    expect(page).to have_css 'ol'
    within 'ol' do
      expect(page).to have_content 'Anton Jonte Adam'
    end
  end
end
