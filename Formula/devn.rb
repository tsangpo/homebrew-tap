class Devn < Formula
  desc "Project-aware Codex and Claude Code launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.1.1/devn-v0.1.1-darwin-arm64.tar.gz"
      sha256 "fa27229c5b34a40f6574b2daa0b3fe1beac75de7ffac43175f1fddc8e499ee92"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.1.1/devn-v0.1.1-darwin-x64.tar.gz"
      sha256 "56b6b6f7d1ee23f76a0f390f3e1ad406192ac3e3383f72346c986fc4695cf00c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.1.1/devn-v0.1.1-linux-arm64.tar.gz"
      sha256 "cf75c849b16b11d5392173af2253fc3d738477b09cd14461b2dfd21a824e1568"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.1.1/devn-v0.1.1-linux-x64.tar.gz"
      sha256 "e64eabbb930ed7e3316aa03f5e6eb5a1ee9b88bd90cb7c364cbc3e4fed3e5a90"
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
