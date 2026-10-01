class Devn < Formula
  desc "Project-aware Codex and Claude Code launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.3.1/devn-v0.3.1-darwin-arm64.tar.gz"
      sha256 "d01c77554f588ee2e667b48206e0a428c5941338d17d1b11a934bb5722817312"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.3.1/devn-v0.3.1-darwin-x64.tar.gz"
      sha256 "1eeb79c5a4e5e944482427bd61660e39b2c471ef1a4f496abd46802f74785aa5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.3.1/devn-v0.3.1-linux-arm64.tar.gz"
      sha256 "c371d14cba67894ca5103a74b20a8c77c30d813ad5f99f352664479cf1356a07"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.3.1/devn-v0.3.1-linux-x64.tar.gz"
      sha256 "4d92f5cb11d209ca9ef30cd30ef9e64f7c0636cef10968c5d8376b3f92c384fb"
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
