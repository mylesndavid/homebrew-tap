cask "zen-dash" do
  version "1.0.0"
  sha256 "cd62cf95f46ea541eb2f3d205755b8dde10d186ef22aaf10e2d4061a5ab735e7"

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
