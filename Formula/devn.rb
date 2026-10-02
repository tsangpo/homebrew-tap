class Devn < Formula
  desc "Project-aware Codex, Claude Code and OpenCode launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.6.0/devn-v0.6.0-darwin-arm64.tar.gz"
      sha256 "1d4996d2d67a637502c0be9157f1826494090756871f14e17aa975a15b2551da"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.6.0/devn-v0.6.0-darwin-x64.tar.gz"
      sha256 "423c734b995e6ebaad920689ab3bc83bf411b70e90036eda7b796fadc811387b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.6.0/devn-v0.6.0-linux-arm64.tar.gz"
      sha256 "03a1e03773426875dc52044a6dc09f8cb70563ed42de334dc90c4d3ba72f4db2"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.6.0/devn-v0.6.0-linux-x64.tar.gz"
      sha256 "6baa89d408b92574aa88a397f745f0816ec53f61cf4892f9bdb7a265fe4f5167"
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
