cask "myna" do
  version "0.3.0"
  sha256 "e8a30dc1b2e2b4a29de1318f3cbdd0ca23e71413c1126a24b8859b2b187fdbe6"

  url "https://github.com/tsangpo/homebrew-tap/releases/download/myna-v0.3.0/Myna.dmg",
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
