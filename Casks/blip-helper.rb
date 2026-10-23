cask "blip-helper" do
  version "2.0.9"
  sha256 "f6075b02834d2c3f68b46db4f12c93d848f1af07a2caad073c08f54461a24ac8"

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
