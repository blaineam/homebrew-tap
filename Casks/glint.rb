cask "glint" do
  version "1.4.0"
  sha256 "ac6dbf0f001469419517794443d14b0a030ffa55c7305793c81e7d0af1f2de81"

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
