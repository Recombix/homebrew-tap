cask "switchboard" do
  version "0.12.5"
  sha256 "ed29c76d6e34aa216c196df90a1943961e393e81974ee98c7028bcc019e7e9ee"

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
