cask "switchboard" do
  version "0.1.2"
  sha256 "9c253e2c5853d5bcc79ff15b7f343f2e0ae7fc9da36bd89bd3dafed19b9b5a5a"

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
