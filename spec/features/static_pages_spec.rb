require 'rails_helper'

describe 'Root' do
  before {gets root_path}
  specify '画面の表示' do
    expect(page).to have_css('h1', text: '介護コミュニティ')
    expect(page).to have_title 'kaigo app'
  end
end

describe 'Help' do
  before {gets help_path}
  specify '画面の表示' do
    expect(page).to have_css('h1', text: '使い方')
    expect(page).to have_title 'Help | kaigo app'
  end
end

describe 'About' do
  before {gets about_path}
  specify '画面の表示' do
    expect(page).to have_css('h1', text: '介護コミュニティに関して')
    expect(page).to have_title 'About | kaigo app'
  end
end

describe 'Contact' do
  before {get contact_path}
  specify '画面の表示' do
    expect(page).to have_css('h1', text: '連絡する')
    expect(page).to have_title 'Contact | kaigo app'
  end
end