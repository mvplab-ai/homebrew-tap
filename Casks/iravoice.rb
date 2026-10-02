cask "iravoice" do
  version "1.0.1"
  sha256 "36692709c19856641547fb21e092f6251aabbdb9b768168c23ede41b498a6cda"

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
