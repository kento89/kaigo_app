require 'rails_helper'

RSpec.describe 'サイトレイアウト' do
  describe 'リンクの数' do
    context 'rootページのリンク' do
      before { visit root_path }
      subject { page }
        it 'リンクが存在が正しいか' do
          is_expected.to have_link nil, href: root_path, count: 2
          is_expected.to have_link 'Help', href: help_path
          is_expected.to have_link 'About', href: about_path
          is_expected.to have_link 'Contact', href: contact_path
        end
    end
  end
end