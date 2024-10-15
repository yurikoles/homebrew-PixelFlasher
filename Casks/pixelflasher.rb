cask "pixelflasher" do
  version "7.5.0.0"
  sha256 "7a40bb38a5ffd6483eb702c25936b27ccfb7023d81ff1262aee0d88925013cd2"

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
