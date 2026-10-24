cask "blip" do
  version "2.0.10"
  sha256 "0fd8fbf12c8ae4808c51e3f06160cb0be9d2568c874e7695c6f3bc74f656839a"

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
