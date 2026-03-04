cask "searchable" do
  version "0.2.2"
  sha256 "8c756b91288f6df065baf7dfb7d3968029594ac625cf27f8689f58b066ae47dd"

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
