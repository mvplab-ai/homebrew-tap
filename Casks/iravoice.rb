cask "iravoice" do
  version "0.7.6"
  sha256 "1b63455c5143199f353c010aa15ca7e0f6825b032a34a78d17d52ce2cb555f0c"

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
