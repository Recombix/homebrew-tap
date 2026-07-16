cask "switchboard" do
  version "0.1.0"
  sha256 "5154dd9b523d64f6c51165d12820ba6aa795cb29163d846d33a3779ef87a5dd7"

  url "https://github.com/Recombix/switchboard-releases/releases/download/v#{version}/Switchboard-#{version}-arm64.dmg"
  name "Switchboard"
  desc "Cockpit for parallel Claude Code agents in isolated git worktrees"
  homepage "https://github.com/Recombix/switchboard-releases"

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "Switchboard.app"

  zap trash: "~/Library/Application Support/Switchboard"
end
