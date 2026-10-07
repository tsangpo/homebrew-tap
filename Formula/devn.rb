class Devn < Formula
  desc "Project-aware Codex, Claude Code and OpenCode launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.1/devn-v0.8.1-darwin-arm64.tar.gz"
      sha256 "4bc2c1ca07a30f1f560dbc1472b709778e1d7fd9d6b80aebb99033fdca5d84a6"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.1/devn-v0.8.1-darwin-x64.tar.gz"
      sha256 "286e169dca7b9211eb59e135a7e73c6681387f05119ed8250354b0f3e3728c23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.1/devn-v0.8.1-linux-arm64.tar.gz"
      sha256 "e8ecbaee5c079f380190bac5bb75b18f0e310c10ec6b93cca6cc55c89b4259f1"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.1/devn-v0.8.1-linux-x64.tar.gz"
      sha256 "5e54f3856bf73899f690a3ab9e7b2737158eb8ff6c195f1f7e8ce1b9d9218c4a"
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
