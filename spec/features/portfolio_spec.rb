require 'spec_helper'

describe 'portfolio', type: :feature do

  before do
    visit 'portfolio.html'
  end

  it 'displays yml content' do
    expect(page).to have_css '.projects'
    within '.projects' do
      expect(page).to have_content 'ATM'
    end
  end
end
