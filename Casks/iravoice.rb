cask "iravoice" do
  version "0.7.4"
  sha256 "f65797393cc05082fb2a9dbcf81ec5216f7e288ec3dca619fc92201bddcdef79"

  url "https://iravoice.com/downloads/distribution/IraVoice-#{version}.dmg"
  name "IraVoice"
  desc "Private on-device dictation and voice-to-spec"
  homepage "https://iravoice.com/"

  livecheck do
    url "https://iravoice.com/assets/press/iravoice-product-facts.json"
    regex(/"softwareVersion"\s*:\s*"v?(\d+(?:\.\d+)+)"/i)
    strategy :page_match
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "IraVoice.app"
end
