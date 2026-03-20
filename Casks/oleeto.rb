cask "oleeto" do
  version "0.3.0"
  sha256 "6227db6f658b97ad423070b8e04abb46d7c7e0c47fb7869b802c4460ba9edb04"

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
