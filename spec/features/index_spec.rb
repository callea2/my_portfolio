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

  it 'displays hero image' do
    expect(page).to have_css 'img[src*="hero.png"]'
  end

  it 'renders header partial' do
    expect(page).to have_selector 'header'
    within 'header' do
      expect(page).to have_content 'Home'
      expect(page).to have_css 'img[src*="logo.png"]'
    end
  end

  it 'renders footer partial' do
    expect(page).to have_selector '.tm-footer'
    within '.tm-footer' do
      expect(page).to have_content 'Copyright'
    end
  end
end
