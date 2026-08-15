cask "notomo" do
  version "0.34.0"
  sha256 "4f8e838ae4d92955940f459d2a7d384a491d7f53d1855be5bda1d3279ec99c16"

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
