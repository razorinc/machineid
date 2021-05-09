require "./spec_helper"

describe Machineid do
  # TODO: Write tests
  describe "Library" do
    it "#id" do
      Machineid.id.should be_a(String)
    end

    it "#protectedID" do
      Machineid.protectedID("123stella").should be_a(String)
    end
  end
end
