class Devn < Formula
  desc "Project-aware Codex, Claude Code and OpenCode launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.2/devn-v0.8.2-darwin-arm64.tar.gz"
      sha256 "1188e7d6b331fcd6236567a1ff26c52d5f9d8325c640f2cd6642e6f79fada52d"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.2/devn-v0.8.2-darwin-x64.tar.gz"
      sha256 "d00a5ebec11234082fdc8de73a7fadff0b4f37be009c6b7f5c3c9073cc4325f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.2/devn-v0.8.2-linux-arm64.tar.gz"
      sha256 "470c19777f8c5a928799331082202ff399d2281d6e7a2bb2844f445b30f96340"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.2/devn-v0.8.2-linux-x64.tar.gz"
      sha256 "f27712d5e45d278635f7575b1c29b9ceed1bd8b8049beacf25d574bae3fd292e"
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
