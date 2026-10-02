cask "iravoice" do
  version "1.1.0"
  sha256 "e43518adac0761b55120a306ad4544e155cf4b61c1918dec8359b1f24c663310"

  url "https://api.iravoice.com/v1/files/desktop/#{version}/IraVoice-#{version}-mac-arm64.dmg"
  name "IraVoice"
  desc "Private, developer-first dictation"
  homepage "https://iravoice.com/"

  livecheck do
    url "https://api.iravoice.com/v1/updates/darwin/aarch64/0.0.0"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "IraVoice.app"

  zap trash: [
    "~/Library/Application Support/com.iravoice.app",
    "~/Library/Caches/com.iravoice.app",
    "~/Library/Logs/com.iravoice.app",
    "~/Library/Preferences/com.iravoice.app.plist",
    "~/Library/WebKit/com.iravoice.app",
  ]
end
