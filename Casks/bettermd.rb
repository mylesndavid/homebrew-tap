cask "bettermd" do
  version "1.1.0"
  sha256 "408d4f668ef5c4270ea64815c5d35610298cd3598b1ede44b95f8fdbcfee01d9"

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
