require 'rails_helper'

RSpec.describe 'Access to static_pages', type: :request do
  context 'GET #home' do
    before { get root_path }
    it 'responds successfully' do
      expect(response).to have_http_status 200
    end
    it "has title 'kaigo app'" do
      expect(response.body).to include 'kaigo app'
      expect(response.body).to_not include '| kaigo app'
    end
  end
  context 'GET #help' do
    before { get help_path }
    it 'responds successfully' do
      expect(response).to have_http_status 200
    end
    it "has title 'Home | kaigo app'" do
      expect(response.body).to include 'Help | kaigo app'
    end
  end
  context 'GET #about' do
    before { get about_path } 
    it 'responds successfully' do
      expect(response).to have_http_status 200
    end
    it "has title 'Home | kaigo app'" do
      expect(response.body).to include 'About | kaigo app'
    end
  end
  context 'GET #contact' do
    before { get contact_path }
    it 'responds successfully' do
      expect(response).to have_http_status 200
    end
    it "has title 'Contact | kaigo app'" do
      expect(response.body).to include 'Contact | kaigo app'
    end
  end
  
end
