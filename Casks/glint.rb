cask "glint" do
  version "1.5.0"
  sha256 "71e622655fb297c8b189b0706d53bd6aec8f1ec93bab6cd4d67a3acd7b7fa7cb"

  url "https://github.com/blaineam/Glint/releases/download/v#{version}/Glint.dmg"
  name "Glint"
  desc "Control the brightness and volume of all your displays from your keyboard"
  homepage "https://glint.wemiller.com"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Glint.app"

  zap trash: [
    "~/Library/Preferences/com.blainemiller.Glint.plist",
  ]
end
