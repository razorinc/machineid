require "./spec_helper"

describe Machineid do
  # TODO: Write tests
  describe "Frontend" do
    it "#id" do
      Machineid.id.should be_a(String)
    end
  end
end
