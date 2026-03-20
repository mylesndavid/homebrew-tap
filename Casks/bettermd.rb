cask "bettermd" do
  version "1.0.0"
  sha256 "df84b18ee32467cdd0b8247e55332db4e1302cceaca6c7dcabd0517f72baa8ba"

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
