require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with a name, email, and password' do
    user=User.new(
      name: 'Sumner',
      email: 'tester@example.com',
      )
      expect(user).to be_valid
  end
  it 'is invalid without a name' do
    user=User.new(name: nil)
    user.valid?
  end
  it 'is invalid without an email address'
  it 'is invalid with a duplicate email address' do
    User.create(
      name: 'Tester',
      email: 'tester@example.com'
      )
      user=User.new(
        name: 'Tester',
        email: 'tester@example.com'
        )
        user.valid?
  end
  it "returns a user's full name as a string"
end
