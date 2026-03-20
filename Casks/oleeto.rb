cask "oleeto" do
  version "0.2.0"
  sha256 "731fc665d033ed24705af0edefce5cc4d4b2820516b90050effcaea419737380"

  url "https://github.com/TrentWantman/oleeto/releases/download/v#{version}/Oleeto-#{version}-arm64.dmg"
  name "oleeto"
  desc "Desktop LeetCode tracker with code editor and GitHub sync"
  homepage "https://github.com/TrentWantman/oleeto"

  app "Oleeto.app"
end
