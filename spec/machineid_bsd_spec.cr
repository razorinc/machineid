{% if flag?(:bsd) %}
require "./spec_helper"

describe Machineid do
  describe "Main" do
    it "#id" do
      Machineid.id.should be_a(String)
    end
  end
end
{% end %}
