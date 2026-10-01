class Devn < Formula
  desc "Project-aware Codex and Claude Code launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.4.1/devn-v0.4.1-darwin-arm64.tar.gz"
      sha256 "8fca0a936b7dbb63de4ad0d116f5f25f6f7d4313d756b9060b1b61a15192ac53"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.4.1/devn-v0.4.1-darwin-x64.tar.gz"
      sha256 "c6c4bcbf7b38777bf0df77ed478aab54685c1a503a29a8c11fce7c15598f6b09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.4.1/devn-v0.4.1-linux-arm64.tar.gz"
      sha256 "5e6d52757f9404132e18cd63b9101c78ee99667dc077f9fb8ed95feb960de4ec"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.4.1/devn-v0.4.1-linux-x64.tar.gz"
      sha256 "c3ca0163bf9e4e4fa36779ad4c7c1180071ae3f690a7c4d329b0c310d261225c"
    end
  end

  def install
    bin.install "devn"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/devn --version").strip
    assert_match "devn profile add", shell_output("#{bin}/devn --help")
    ENV["XDG_CONFIG_HOME"] = (testpath/"config").to_s
    assert_match "No profiles registered", shell_output("#{bin}/devn profile list")
  end
end
