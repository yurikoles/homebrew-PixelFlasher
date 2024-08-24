cask "pixelflasher" do
  version "7.4.1.2"
  sha256 "542ee5e399c4bd4990f26cab9382f280d5e13f23b4ea4ba8cb3c2eafff84d18a"

  url "https://github.com/badabing2005/PixelFlasher/releases/download/v#{version}/PixelFlasher.dmg"
  name "PixelFlasher"
  desc "Pixel phone flashing GUI utility with features"
  homepage "https://github.com/badabing2005/PixelFlasher"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "PixelFlasher.app"

  zap trash: [
    "~/Library/Application Support/PixelFlasher",
    "~/Library/Preferences/com.badabing.pixelflasher.plist",
    "~/Library/Saved Application State/com.badabing.pixelflasher.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
