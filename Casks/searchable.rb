cask "searchable" do
  version "0.3.1"
  sha256 "d39bffb41923e6da071586b07978171c759e8a225961a9a513c4d379ee189521"

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
