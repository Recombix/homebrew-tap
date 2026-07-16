cask "switchboard" do
  version "0.1.1"
  sha256 "7d3a4262c8163a5d0bf061d3dcef2a4f57ebd048c3d121a9eded35fd687d5aa6"

  url "https://github.com/Recombix/switchboard-releases/releases/download/v#{version}/Switchboard-#{version}-arm64.dmg"
  name "Switchboard"
  desc "Cockpit for parallel Claude Code agents in isolated git worktrees"
  homepage "https://github.com/Recombix/switchboard-releases"

  auto_updates true

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "Switchboard.app"

  zap trash: "~/Library/Application Support/Switchboard"
end
