class Devn < Formula
  desc "Project-aware Codex, Claude Code and OpenCode launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.0/devn-v0.8.0-darwin-arm64.tar.gz"
      sha256 "fe61a5cc6cd71b0021aa741cec9ae17dd8bf61823efa13c7c869a31ece041b0e"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.0/devn-v0.8.0-darwin-x64.tar.gz"
      sha256 "228754e69becd01dac625404cbcbc5102fec9428218573f0ef58a36bf8885f32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.0/devn-v0.8.0-linux-arm64.tar.gz"
      sha256 "430604292d40bdae20c486608ff0247d3d3fd9607159a00ab395f54c444f3edb"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.0/devn-v0.8.0-linux-x64.tar.gz"
      sha256 "e88fe4fda5536467d364697accfc795ed04753978b33f786002aa10fa47c5be5"
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
