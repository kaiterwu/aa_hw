require 'rails_helper'

# RSpec.describe "Users", type: :request do

#   describe "GET /users/new (#new)" do
#     it "renders the new template" do
#       get new_user_url
#       expect(response.body).to include("Sign Up!")
#     end
#   end

#   describe "POST /users (#create)" do
#     context "with invalid params" do
#       tester = User.new(:email => 'test@tester.com',:password_digest => BCrypt::Password.create('password'), )
#       it "validates the presence of the user's email" do
#         post users_url, params:{user:{}}
#       end

#       it "validates that the password is at least 6 characters long" do
#         # Your code here
#       end
#     end

#     context "with valid params" do
#       it "redirects user to root page on success" do
#         # Your code here
#       end
#     end
#   end
# end
