class Devn < Formula
  desc "Project-aware Codex, Claude Code and OpenCode launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.5.1/devn-v0.5.1-darwin-arm64.tar.gz"
      sha256 "91d1b3f8142345050355b6bfb810033c5e19f6f360687eafd7f8f61db32a8889"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.5.1/devn-v0.5.1-darwin-x64.tar.gz"
      sha256 "ceb1c542534778e2bb6bd9318aeb5983c407557c54b120942e5892189863b569"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.5.1/devn-v0.5.1-linux-arm64.tar.gz"
      sha256 "cf77f164f63748d3b7c48dffce3bab69343f43f4f72783b8db1ff7510a844fbc"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.5.1/devn-v0.5.1-linux-x64.tar.gz"
      sha256 "f1354f44af7b82d67445962d1d6dfe04e3bafdb5e6d4d6402ed347aaacbfc821"
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
