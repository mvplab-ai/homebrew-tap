cask "iravoice" do
  version "0.7.5"
  sha256 "42590aded7fa3e6a1a36e475e68ec677b91b858b7630db26e8bc32ed44140416"

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
