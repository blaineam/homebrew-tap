cask "blip-helper" do
  version "2.0.7"
  sha256 "3af079316a931580837deff11c9e0d0fae95ab5ef4661a87e3b9b98bf49eb1c4"

  url "https://github.com/blaineam/Blip/releases/download/v#{version}/BlipHelper.dmg"
  name "Blip Helper"
  desc "Companion helper for the App Store version of Blip"
  homepage "https://blip.wemiller.com/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Blip Helper.app"

  uninstall quit: "com.blainemiller.BlipHelper"

  zap trash: "~/Library/Preferences/com.blainemiller.BlipHelper.plist"
end
