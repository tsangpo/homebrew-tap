class Devn < Formula
  desc "Project-aware Codex, Claude Code and OpenCode launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.5.0/devn-v0.5.0-darwin-arm64.tar.gz"
      sha256 "86ef65646580f4c6368563963306a04698a8e437601dd55f9c463127a62646a9"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.5.0/devn-v0.5.0-darwin-x64.tar.gz"
      sha256 "3030bf8562a5569a15e53cbc5815985fb272d2d6c5cdebf2f41b6c8c01c06e74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.5.0/devn-v0.5.0-linux-arm64.tar.gz"
      sha256 "779d84f84863db28fd3535285131c3eea1b48e4780c3a79b505cb49e8d206429"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.5.0/devn-v0.5.0-linux-x64.tar.gz"
      sha256 "0f7763b912fc0cc2153e7c632adf6affa626e369bc0f9190a717e1df97973191"
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
