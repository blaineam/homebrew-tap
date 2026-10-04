cask "blip-helper" do
  version "2.0.5"
  sha256 "819e2b8f6613e33dc50a505cf8bf0e146dcaa7f981eca9e82e4445e5d991baff"

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
