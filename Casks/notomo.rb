cask "notomo" do
  version "0.32.0"
  sha256 "9a07ab9ebaa8bf52205a018cd7377fda72f2583e594547ea7116e9809ae3d497"

  url "https://notomo.app/Notomo-#{version}.dmg"
  name "Notomo"
  desc "Markdown shortcuts, quick actions and AI for Apple Notes"
  homepage "https://notomo.app/"

  livecheck do
    url "https://notomo.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Notomo.app"

  zap trash: [
    "~/Library/Application Support/Notomo",
    "~/Library/Caches/com.notomo.Notomo",
    "~/Library/HTTPStorages/com.notomo.Notomo",
    "~/Library/Preferences/com.notomo.Notomo.plist",
    "~/Library/WebKit/com.notomo.Notomo",
    "~/Library/WebKit/com.notomo.Notomo.binarycookies",
  ]
end
