cask "myna" do
  version "0.4.0"
  sha256 "51187337c6cce54d610d7210c57212c280a46bdf2cbb8ccbba919be5208e14a0"

  url "https://github.com/tsangpo/homebrew-tap/releases/download/myna-v0.4.0/Myna.dmg",
      verified: "github.com/tsangpo/homebrew-tap/"
  name "Myna"
  desc "AI assistant toolkit for macOS with text analysis, dictation, and screen capture"
  homepage "https://github.com/tsangpo/macos-assistant"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Myna.app"
end
