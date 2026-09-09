cask "switchboard" do
  version "0.9.11"
  sha256 "9a31caad8a302493749f60bd535034cffb85e8a8c1af23a23220e8fa7e462284"

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
