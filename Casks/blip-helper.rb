cask "blip-helper" do
  version "2.0.4"
  sha256 "7c2e3f3106405601d67177f665d1950cafc196f83ca2f294b5fe7213a96fdee3"

  url "https://github.com/blaineam/Blip/releases/download/v#{version}/BlipHelper.dmg"
  name "Blip Helper"
  desc "Companion helper that unlocks Blip's fan, temperature, GPU and disk I/O stats"
  homepage "https://blip.wemiller.com"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Blip Helper.app"

  uninstall quit: "com.blainemiller.BlipHelper"

  zap trash: "~/Library/Preferences/com.blainemiller.BlipHelper.plist"
end
