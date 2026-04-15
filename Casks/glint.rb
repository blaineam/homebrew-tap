cask "glint" do
  version "1.3.7"
  sha256 "3156c6240fd02ab49d4a263d5bd51f705e7d3b858ceee849f4cf5a67c9e55ba6"

  url "https://github.com/blaineam/Glint/releases/download/v#{version}/Glint.dmg"
  name "Glint"
  desc "Control the brightness and volume of all your displays from your keyboard"
  homepage "https://glint.wemiller.com"

  depends_on macos: ">= :ventura"

  app "Glint.app"

  zap trash: [
    "~/Library/Preferences/com.blainemiller.Glint.plist",
  ]
end
