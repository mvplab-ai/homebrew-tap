cask "iravoice" do
  version "1.2.2"
  sha256 "4ac82d529f7156a4e2c927f96dd084d899390dcc46b2e4da06e3219c9984a64f"

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
  depends_on macos: :ventura

  app "IraVoice.app"

  zap trash: [
    "~/Library/Application Support/com.iravoice.app",
    "~/Library/Caches/com.iravoice.app",
    "~/Library/Logs/com.iravoice.app",
    "~/Library/Preferences/com.iravoice.app.plist",
    "~/Library/WebKit/com.iravoice.app",
  ]
end
