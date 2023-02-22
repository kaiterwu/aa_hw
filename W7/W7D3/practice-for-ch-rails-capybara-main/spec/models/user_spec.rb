require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do 
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it do  
    should validate_length_of(:password).
    is_at_least(6).
    on(:create)
  end
end 

  describe "#is_password?" do
    tester = User.new(:email => 'test@tester.com',:password_digest => BCrypt::Password.create('password'), )
    it "checks if a password matches the result from Bcrypt" do 
      expect(tester.is_password?('password')).to be true 
  end
end
end

