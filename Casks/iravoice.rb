cask "iravoice" do
  version "0.7.2"
  sha256 "64e4fe4fa9a2c753605306def0ef6eb6cd1b6d12f530c93becc1af3dc29234dd"

  url "https://iravoice.com/downloads/distribution/IraVoice-#{version}.dmg"
  name "IraVoice"
  desc "Private on-device dictation and voice-to-spec"
  homepage "https://iravoice.com/"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "IraVoice.app"
end
