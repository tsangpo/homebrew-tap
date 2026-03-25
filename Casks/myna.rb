cask "myna" do
  version "0.1.0"
  sha256 "b024ce36d1d06e77eea65c701013bafabcb75163288fda954973e0acbf1eff7d"

  url "https://github.com/tsangpo/homebrew-tap/releases/download/myna-v0.1.0/Myna.dmg",
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
