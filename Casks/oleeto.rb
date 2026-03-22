cask "oleeto" do
  version "0.4.0"
  sha256 "93b68fb30c6b0760f13ac76303fff43d11be5d7cff58c904b1e0b05b771a19a5"

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
