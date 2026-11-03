cask "claude-limits" do
  version "1.0.0"
  sha256 "462f54c911b11b8181cf966c22aac667205fa77e7221cd58e2e1d365cbf042c9"

  url "https://github.com/vdszds/claude-limits/releases/download/v#{version}/Claude-Limits.dmg"
  name "Claude Limits"
  desc "Menu bar usage limits for several Claude accounts"
  homepage "https://github.com/vdszds/claude-limits"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Claude Limits.app"

  uninstall quit: "com.vzdesenko.Limits"

  zap trash: [
    "~/Library/Caches/com.vzdesenko.Limits",
    "~/Library/HTTPStorages/com.vzdesenko.Limits",
    "~/Library/Preferences/com.vzdesenko.Limits.plist",
    "~/Library/WebKit/com.vzdesenko.Limits",
  ]
end
