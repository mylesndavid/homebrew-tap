cask "zen-dash" do
  version "1.0.0"
  sha256 "ce4452b5b010f8c4ccff0b2a25d1070a7c006b95f2c23d765d2c70871d1e4665"

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
