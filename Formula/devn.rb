class Devn < Formula
  desc "Project-aware Codex, Claude Code and OpenCode launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.4/devn-v0.8.4-darwin-arm64.tar.gz"
      sha256 "c60926d9c5dbf41264bfec1135391be254676384353194632d798008c3734cd0"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.4/devn-v0.8.4-darwin-x64.tar.gz"
      sha256 "dea32d432a95946112ec12de2f000ceed584eb053c8ddac15efed7a21ed5f860"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.4/devn-v0.8.4-linux-arm64.tar.gz"
      sha256 "4826c4ea49dcc5fb283cb581fd429382169f9e1b2628b35a50440d9711c6fcf6"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.4/devn-v0.8.4-linux-x64.tar.gz"
      sha256 "e8e23d1aeca0791a47452233de2f6bee29b5530a58853487c6376796556e048b"
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
