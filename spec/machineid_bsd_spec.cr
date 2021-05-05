require "./spec_helper"

describe Machineid do
  describe "Main" do
    it "works" do
      false.should eq(true)
    end
    it "#id" do
      Machineid.id.should eq(String)
    end
  end
end
