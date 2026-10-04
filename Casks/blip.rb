cask "blip" do
  version "2.0.6"
  sha256 "2d3bb4bcca8385698797ea14b477d01bd957fdea6498175b83f647bc090e8b5e"

  url "https://github.com/blaineam/Blip/releases/download/v#{version}/Blip.dmg"
  name "Blip"
  desc "Featherlight menu bar system monitor"
  homepage "https://blip.wemiller.com/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Blip.app"

  zap trash: [
    "~/Library/Preferences/com.blainemiller.Blip.plist",
    "~/Library/Saved Application State/com.blainemiller.Blip.savedState",
  ]
end
