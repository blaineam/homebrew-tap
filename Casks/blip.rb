cask "blip" do
  version "2.0.7"
  sha256 "66323fa0d9fb267cb14c092209fc70361579815129bddd2c1eb83d8a484a53f1"

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
