cask "switchboard" do
  version "0.3.5"
  sha256 "0ec71432d67b4c155ba43c0b99d9a8470e450f157297d639617ed23c286c1115"

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
