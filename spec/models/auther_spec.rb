require 'rails_helper'

RSpec.describe Auther, type: :model do
  context 'validations' do
    it "ensures the presence of a email" do
      auther = Auther.new(email: "")
      expect(auther).to_not be_valid
    end

    it "minimum length of password" do
      auther = Auther.new(auther_name: "mayur",password: "mayurmaha", email:"mayur@gmail.com")
      expect(auther).to be_valid
    end

    it "presence of name" do
      auther = Auther.new(auther_name: "")
      expect(auther).to_not be_valid
    end

    it "presence of error messege" do
      auther = Auther.new(auther_name: "")
      auther.validate
      p auther.errors
      msg = auther.errors.any?
      expect(msg).to eq(true)
    end
  end
end
