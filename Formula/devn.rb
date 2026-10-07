class Devn < Formula
  desc "Project-aware Codex, Claude Code and OpenCode launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.3/devn-v0.8.3-darwin-arm64.tar.gz"
      sha256 "0e2e0463aaaa1023fc01491d94cd2a3f32f06f83147e467d049d29520468034a"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.3/devn-v0.8.3-darwin-x64.tar.gz"
      sha256 "9f147784e7b654b57380a057a97510d00bdf79a07e4204b20c15ba727bb4128d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.3/devn-v0.8.3-linux-arm64.tar.gz"
      sha256 "e6b24c73f08fb968c6187c46c812766d3bc20a48852879037fbbafb1e8dd4f46"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.3/devn-v0.8.3-linux-x64.tar.gz"
      sha256 "8b9ac97826773d8f608980948abc07e7309addd14bde53129b50245e68da5402"
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
