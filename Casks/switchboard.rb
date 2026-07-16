cask "switchboard" do
  version "0.1.4"
  sha256 "259fb2de4254760d755353f56fd7068978160ef340a0b21009c83b244bca60ae"

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
