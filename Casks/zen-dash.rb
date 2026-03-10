cask "zen-dash" do
  version "1.0.0"
  sha256 "88d6a998255d6e7857b10ca8b956938d511d56c03b56828d0b87997cbc61fabe"

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
