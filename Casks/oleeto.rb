cask "oleeto" do
  version "0.2.0"
  sha256 "a552f0ab428c0dfbe22d9171c64b48694374889f7edb995e150483081286a376"

  url "https://github.com/TrentWantman/oleeto/releases/download/v#{version}/Oleeto-#{version}-arm64.dmg"
  name "oleeto"
  desc "Desktop LeetCode tracker with code editor and GitHub sync"
  homepage "https://github.com/TrentWantman/oleeto"

  app "Oleeto.app"
end
