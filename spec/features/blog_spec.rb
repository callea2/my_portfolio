require 'spec_helper'

describe 'blog', type: :feature do

  before do
    visit 'blog.html'
  end

  it 'displays article' do
    expect(page).to have_css '.articles'
    within '.articles' do
      expect(page).to have_content 'My first blog post!'
    end
  end
end
