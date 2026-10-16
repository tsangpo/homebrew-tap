class Devn < Formula
  desc "Project-aware Codex, Claude Code and OpenCode launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.9.0/devn-v0.9.0-darwin-arm64.tar.gz"
      sha256 "94a99f9b2f72be6a21fa94fdb9c4097a8b8e5e3968be5a050e451b84453196dc"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.9.0/devn-v0.9.0-darwin-x64.tar.gz"
      sha256 "9a768a8d9ce49da25125e0e04200f9998ea9204979fe1f6c7f7eab0cd088d4ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.9.0/devn-v0.9.0-linux-arm64.tar.gz"
      sha256 "9c8dadbba937feb9a2b80844e94aec0fae94a9259e3fa4a842d711fac7c83515"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.9.0/devn-v0.9.0-linux-x64.tar.gz"
      sha256 "157f3f8d1b2e84956e88237ecdc06afcb9d92becd8940ea7a34024680359bdb9"
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
