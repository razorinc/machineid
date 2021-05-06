require "./spec_helper"

describe Machineid::ProtectedId do
  it "generate an HMAC-SHA256 hexdigest" do
    # echo -n "123stella" | openssl dgst -sha256 -hmac "123stella"
    # (stdin)= 791596ad9a4cbf86199315a86e183da34d7b970b06c507f04262a44f195b562f
    Machineid::ProtectedId.protect("123stella", "123stella").should eq("791596ad9a4cbf86199315a86e183da34d7b970b06c507f04262a44f195b562f")
  end
end
