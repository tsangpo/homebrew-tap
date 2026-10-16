class Devn < Formula
  desc "Project-aware Codex, Claude Code and OpenCode launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.9.1/devn-v0.9.1-darwin-arm64.tar.gz"
      sha256 "1c6cb21019685901fce0b23265e78032e98eb8dddfee0115766be013955810a8"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.9.1/devn-v0.9.1-darwin-x64.tar.gz"
      sha256 "315d7ff4c8ccb88ad7d54db32ddc8af3ae11e081cbb58cc394daeec675e418d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.9.1/devn-v0.9.1-linux-arm64.tar.gz"
      sha256 "2377a5f1668af4c1d7d1cd1f361da3e31a4dffb22dd7c9e1da894a402c9e5e1d"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.9.1/devn-v0.9.1-linux-x64.tar.gz"
      sha256 "745a35e024a9aa01e11d2afc86691ddc241f0d71757baa9a18181f18a72a2611"
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
