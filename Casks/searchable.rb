cask "searchable" do
  version "0.1.0"
  sha256 "9c5c2b39d42faa5de7ac9b09ee4e8ba8281d132b49cebcfd8dad01b550fcf6f7"

  url "https://github.com/mylesndavid/searchable/releases/download/v#{version}/Searchable_#{version}_aarch64.dmg"
  name "Searchable"
  desc "Browse and search your Claude Code session history"
  homepage "https://github.com/mylesndavid/searchable"

  app "Searchable.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Searchable.app"]
  end

  zap trash: [
    "~/.claude-code-explorer",
  ]
end
