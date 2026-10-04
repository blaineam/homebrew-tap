cask "blip" do
  version "2.0.4"
  sha256 "c8384af5e7a9fce7d48d9f53c28794b72a0f6ca0cd2ec5e267115a71fe8fe461"

  url "https://github.com/blaineam/Blip/releases/download/v#{version}/Blip.dmg"
  name "Blip"
  desc "Featherlight macOS menu bar system monitor"
  homepage "https://blip.wemiller.com"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Blip.app"

  zap trash: [
    "~/Library/Preferences/com.blainemiller.Blip.plist",
    "~/Library/Saved Application State/com.blainemiller.Blip.savedState",
  ]
end
