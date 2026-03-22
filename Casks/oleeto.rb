cask "oleeto" do
  version "0.4.0"
  sha256 "5e318c439ca0788c9b2e854344e98ae541fdcb8aaaa2712aa0427c809d21d2a0"

  url "https://github.com/TrentWantman/oleeto/releases/download/v#{version}/Oleeto-#{version}-arm64.dmg"
  name "oleeto"
  desc "Desktop LeetCode tracker with code editor and GitHub sync"
  homepage "https://github.com/TrentWantman/oleeto"

  app "Oleeto.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-r", "-d", "com.apple.quarantine", "#{appdir}/Oleeto.app"]
  end
end
