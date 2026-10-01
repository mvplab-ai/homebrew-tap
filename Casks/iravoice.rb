cask "iravoice" do
  version "0.8.1"
  sha256 "b74107091b1da3866c1a506c5a159e6c31977ffd7ea6e6aa865dfbf7e8fb524c"

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
