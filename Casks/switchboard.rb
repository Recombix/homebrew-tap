cask "switchboard" do
  version "0.11.0"
  sha256 "cb3d8018526bdb94d02d8cac0663c1f0cff67d3d58303fbeb9e1810a2b36509f"

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
