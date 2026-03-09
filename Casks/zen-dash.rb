cask "zen-dash" do
  version "1.0.0"
  sha256 "95a2a9ea34bb1693b7c40337dc0a4663bb1d7d3b66969be813848abd5e2f7a40"

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
