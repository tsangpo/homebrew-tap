class Devn < Formula
  desc "Project-aware Codex and Claude Code launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.3.0/devn-v0.3.0-darwin-arm64.tar.gz"
      sha256 "db5b52d7b6f4f412072efefdf15bb5e89ea8a61c108b36c36e657a5482678f2d"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.3.0/devn-v0.3.0-darwin-x64.tar.gz"
      sha256 "e32e435f7825b5f36a39183188dd961663c095caaba5a19d23a25ce77ca50e32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.3.0/devn-v0.3.0-linux-arm64.tar.gz"
      sha256 "2b71122f126383a6703b980829ad7c80f7fef4193d19c17496223d2d66c08947"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.3.0/devn-v0.3.0-linux-x64.tar.gz"
      sha256 "0231589e1e5a710ad85fd3619182c9bdc2c5e2a1789d713684e043eefe7625e0"
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
