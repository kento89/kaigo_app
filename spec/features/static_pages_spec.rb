require 'rails_helper'

describe 'Root' do
  specify '画面の表示' do
    visit '/'
    expect(page).to have_css('h1', text: '介護コミュニティ')
    expect(page).to have_title 'Home | kaigo app'
  end
end

describe 'Home' do
  specify '画面の表示' do
    visit '/static_pages/home'
    expect(page).to have_css('h1', text: '介護コミュニティ')
    expect(page).to have_title 'Home | kaigo app'
  end
end

describe 'Help' do
  specify '画面の表示' do
    visit '/static_pages/help'
    expect(page).to have_css('h1', text: '使い方')
    expect(page).to have_title 'Help | kaigo app'
  end
end

describe 'About' do
  specify '画面の表示' do
    visit '/static_pages/about'
    expect(page).to have_css('h1', text: '介護コミュニティに関して')
    expect(page).to have_title 'About | kaigo app'
  end
end