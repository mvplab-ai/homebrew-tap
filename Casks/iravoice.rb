cask "iravoice" do
  version "0.8.0"
  sha256 "461236fb8c4ba9adc5e8b4bb805fccf63088b5a3780130d42dcf003829cc8ae3"

  url "https://iravoice.com/downloads/distribution/IraVoice-#{version}.dmg"
  name "IraVoice"
  desc "Private on-device dictation"
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
