cask "searchable" do
  version "0.2.0"
  sha256 "a7b7e959301f78066e074e2e80b415d138806ee3bf63a2d4c65c962fcf642c91"

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
