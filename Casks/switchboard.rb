cask "switchboard" do
  version "0.1.3"
  sha256 "8877bec5cea302f453482b750987c1b48d40ff93652379db5e883a43c7a97a6d"

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
