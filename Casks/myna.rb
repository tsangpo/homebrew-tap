cask "myna" do
  version "0.2.0"
  sha256 "b1bb3b83fc21ec0831fa57d599075b16dba27ec94ff8ecf2e7ee91a8ab8187db"

  url "https://github.com/tsangpo/homebrew-tap/releases/download/myna-v0.2.0/Myna.dmg",
      verified: "github.com/tsangpo/homebrew-tap/"
  name "Myna"
  desc "AI assistant toolkit for macOS with text analysis, dictation, and screen capture"
  homepage "https://github.com/tsangpo/macos-assistant"

  livecheck do
    skip "Version is managed by the release script."
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Myna.app"
end
