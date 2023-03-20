require 'rails_helper'

RSpec.describe Auther, type: :model do
  context 'validations' do
    it "ensures the presence of a email" do
      auther = Auther.new()
      expect(auther).to_not be_valid
    end

    it "minimum length of password" do
      auther = Auther.new(name: "mayur",password: "mayurmaha", email:"mayur@gmail.com")
      expect(auther).to be_valid
    end

    it "presence of name" do
      auther = Auther.new(name: "")
      expect(auther).to_not be_valid
    end

    it "presence of error messege" do
      auther = Auther.new(name: "")
      auther.validate
      message = auther.errors.any?
      expect(message).to be true
    end
  end
end
