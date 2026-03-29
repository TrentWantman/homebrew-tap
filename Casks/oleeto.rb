cask "oleeto" do
  version "0.6.1"
  sha256 "e67a394dc95ac6a4858f46b486ae145e1d7d680f6e5fc7ffdbcc72b66336e7c1"

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
