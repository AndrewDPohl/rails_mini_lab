require 'rails_helper'

RSpec.describe User, :type => :model do
  
  describe "validations" do

    it "should confirm a user :email" do
            user = User.new({email: "blah"})
            expect(user.save).to be(false)
        end

        it "should confirm a user :password" do
            user = User.new({password: "blah"})
            expect(user.save).to be(false)
        end

    it "should validate the :email format" do
            user = User.new({
                                email: "blah",
                                password: "blahblah"
                            })
            expect(user.save).to be(false)
        end

    it "should validate the :password format to conain upper and lowercase letters" do
            user = User.new({
                                email: "blah@blah.com",
                                password: "blahblah"
                            })
            expect(user.save).to be(false)
        end
  end
end
