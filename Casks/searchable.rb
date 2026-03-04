cask "searchable" do
  version "0.2.1"
  sha256 "9c3e99067f48305c0b43f413d423be31e3f8ee1c3dce2e70a53660805f25d77b"

  url "https://github.com/mylesndavid/searchable/releases/download/v#{version}/Searchable_#{version}_aarch64.dmg"
  name "Searchable"
  desc "Browse and search your Claude Code session history"
  homepage "https://github.com/mylesndavid/searchable"

  app "Searchable.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Searchable.app"]
    system_command "/usr/bin/open", args: ["#{appdir}/Searchable.app"]
  end

  zap trash: [
    "~/.claude-code-explorer",
  ]
end
