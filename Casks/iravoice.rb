cask "iravoice" do
  version "0.7.1"
  sha256 "7f95cc160f1ac146320f9eadedcbb00f336c96dfad3619249debfdbb6fa50cb1"

  url "https://iravoice.com/downloads/IraVoice-#{version}.dmg"
  name "IraVoice"
  desc "Private on-device dictation and voice-to-spec"
  homepage "https://iravoice.com/"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "IraVoice.app"
end
