require "./spec_helper"

describe Machineid::ProtectedId do
  it "generate an HMAC-SHA256 hexdigest" do
    Machineid::ProtectedId.protect("123stella", "123stella").should be_a(String)
  end
end

#  # TODO: Write tests
#  describe "Frontend" do
#    it "works" do
#      false.should eq(false)
#    end
#    it "#id" do
#      Machineid.id.should be_a(String)
#    end
#  end
#end
