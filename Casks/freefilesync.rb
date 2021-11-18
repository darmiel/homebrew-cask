cask "freefilesync" do
  version "11.14"
  sha256 "c206d401d1040f35e9a98b4319e7f0ae835fa290bd40babeb979da290bdf1dcd"

  url "https://freefilesync.org/download/FreeFileSync_#{version}_macOS.zip"
  name "Free File Sync"
  desc "File synchronization tool"
  homepage "https://freefilesync.org/"

  pkg "FreeFileSync_#{version}.pkg"

  uninstall pkgutil: "org.freefilesync.pkg.FreeFileSync"

  livecheck do
    url "https://freefilesync.org/download.php"
    strategy :page_match
    regex(%r{href=.*?/FreeFileSync_(\d+(?:\.\d+)*)_macOS.zip}i)
  end
end
