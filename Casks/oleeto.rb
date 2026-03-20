cask "oleeto" do
  version "0.3.0"
  sha256 "40c2cee2ae4316c8b52e443637cdb28e919cf138197cae1975c891161d98855a"

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
