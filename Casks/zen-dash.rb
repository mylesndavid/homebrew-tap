cask "zen-dash" do
  version "1.0.0"
  sha256 "31bb3e157d2d40afa586fd04ab99f5b531549ae034b6f691c245b710a67d0b56"

  url "https://github.com/mylesndavid/zen-dash/releases/download/v#{version}/Zen.Dash-#{version}-arm64.dmg"
  name "Zen Dash"
  desc "Zen productivity dashboard - Pomodoro, Time Blocks, Tasks, Thinking Space"
  homepage "https://github.com/mylesndavid/zen-dash"

  app "Zen Dash.app"

  zap trash: [
    "~/Library/Application Support/zen-dash",
    "~/Library/Preferences/com.zendash.app.plist",
  ]
end
