cask "blip" do
  version "2.0.5"
  sha256 "ae5219e046689d6a17c9585d83629443b4b098523e1b69e8f7dc1d1fec8a53ba"

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
