cask "blip-helper" do
  version "2.0.10"
  sha256 "9c852c4b9a0eae7db656876f5737621b37267aeb4917b5ba5191b5683fbc2dfe"

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
