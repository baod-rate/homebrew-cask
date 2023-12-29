cask "leap-motion" do
  version "2.3.1"
  sha256 :no_check

  url "https://warehouse.leapmotion.com/apps/4184/download"
  name "Leap Motion"
  desc "Software for the Leap Motion Controller"
  homepage "https://developer.leapmotion.com/"

  livecheck do
    url "https://warehouse.leapmotion.com/apps/4184/download"
    strategy :header_match
  end

  pkg "Leap Motion.pkg"

  uninstall script: "/Applications/Leap Motion.app/Contents/MacOS/uninstall"
end
