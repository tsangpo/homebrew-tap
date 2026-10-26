class Devn < Formula
  desc "Project-aware Codex, Claude Code and OpenCode launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.9.2/devn-v0.9.2-darwin-arm64.tar.gz"
      sha256 "04b773d51b27554bda7084c0bf76a06671dc2542c58c48e4c38a017fe7e251c3"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.9.2/devn-v0.9.2-darwin-x64.tar.gz"
      sha256 "c50593f794df246431ab0d51015e8d13b9e6cfb74691af76c8bf2243b01ba84e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.9.2/devn-v0.9.2-linux-arm64.tar.gz"
      sha256 "5732daed5988f1ae721d8aea9b88439024e86cfd9c6c48e09ddbb6e6f4e79c39"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.9.2/devn-v0.9.2-linux-x64.tar.gz"
      sha256 "6f4daf2e0bf73f0062b4f64caf60037a775aa286eeb784457f2707b18e468a67"
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
