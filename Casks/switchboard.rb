cask "switchboard" do
  version "0.11.4"
  sha256 "dd082787072e31a644802194f8f6d0fabd3dffec29e93210dcaac36c78cb0592"

  url "https://github.com/Recombix/switchboard-releases/releases/download/v#{version}/Switchboard-#{version}-arm64.dmg"
  name "Switchboard"
  desc "Cockpit for parallel Claude Code agents in isolated git worktrees"
  homepage "https://github.com/Recombix/switchboard-releases"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Switchboard.app"
  binary "#{appdir}/Switchboard.app/Contents/Resources/bin/switchboard"

  zap trash: "~/Library/Application Support/Switchboard"
end
