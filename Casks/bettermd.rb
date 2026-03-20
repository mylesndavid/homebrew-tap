cask "bettermd" do
  version "1.2.0"
  sha256 "403091414d0d0c4fb00f3da11f1993bd55b6d8e791590076cefcc3e009a0d316"

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
