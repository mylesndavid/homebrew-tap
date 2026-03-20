cask "bettermd" do
  version "1.4.0"
  sha256 "1590d6825dbd39eb6cd23fe076cf744bea6a8d945382bdcbc45fd56760964174"

  url "https://github.com/mylesndavid/bettermd/releases/download/v#{version}/BetterMD-#{version}-arm64.dmg"
  name "BetterMD"
  desc "A markdown viewer for macOS. Like Preview, but for .md files."
  homepage "https://github.com/mylesndavid/bettermd"

  app "BetterMD.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/BetterMD.app"]
  end

  zap trash: [
    "~/Library/Application Support/bettermd",
    "~/Library/Preferences/com.bettermd.app.plist",
  ]
end
