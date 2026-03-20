cask "oleeto" do
  version "0.2.0"
  sha256 "9301daa16d7dc38921bb0a28fdad44092d946360f6c64b3e57730b401adb9d07"

  url "https://github.com/TrentWantman/oleeto/releases/download/v#{version}/Oleeto-#{version}-arm64.dmg"
  name "oleeto"
  desc "Desktop LeetCode tracker with code editor and GitHub sync"
  homepage "https://github.com/TrentWantman/oleeto"

  app "Oleeto.app"
end
