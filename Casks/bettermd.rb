cask "bettermd" do
  version "1.3.0"
  sha256 "407fbbb672fe5b8bf27656f85e9feeb8e0b6d443caf2b20bbc9b7946d6bb3f8d"

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
