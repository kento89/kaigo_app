require 'rails_helper'

RSpec.describe 'サイトレイアウト' do
  describe 'リンクの数' do
    context 'rootページのリンク' do
      before { get root_path }
      # subject { page }
        it 'リンクが存在が正しいか' do
          expect(page).to have_link nil, href: root_path, count: 2
          expect(page).to have_link 'Help', href: help_path
          expect(page).to have_link 'About', href: about_path
          expect(page).to have_link 'Contact', href: contact_path
        end
    end
  end
end