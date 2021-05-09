require "./spec_helper"

describe Machineid::Linux do
  # TODO: Write tests
  describe "Linux" do
    it "#id" do
      Machineid.id.should be_a(String)
    end
  end
end
