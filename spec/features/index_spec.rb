require 'spec_helper'

describe 'index', type: :feature do

  before do
    visit '/'
  end

  it 'displays heil Calle! within a h1 tag' do
    expect(page).to have_selector 'h1'
    within 'h1' do
      expect(page).to have_content 'heil Calle!'
    end
  end

  it 'displays Calle image' do
    expect(page).to have_css 'img[src*="calle.jpg"]'
  end

  it 'renders header partial' do
    expect(page).to have_selector 'header'
    within 'header' do
      expect(page).to have_content 'Home'
      expect(page).to have_css 'img[src*="logo.png"]'
    end
  end
end
