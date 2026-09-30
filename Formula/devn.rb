class Devn < Formula
  desc "Project-aware Codex and Claude Code launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.2.1/devn-v0.2.1-darwin-arm64.tar.gz"
      sha256 "388bc8bf3c84863d4d834c5a2291c0e414e42eb3f15272112941f8e59e077f9d"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.2.1/devn-v0.2.1-darwin-x64.tar.gz"
      sha256 "0e5cde58818f0f931ab3afe4187cec84ba91948db31ad14641ca58b84ad22be7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.2.1/devn-v0.2.1-linux-arm64.tar.gz"
      sha256 "7069d1e5ca5402d745f76529a39227e8f0083822915a9a21af8760b260f98555"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.2.1/devn-v0.2.1-linux-x64.tar.gz"
      sha256 "090c8b7f26f8baff0da7a1837fd59b85c2711424953939432ff5c6744785d9d1"
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
