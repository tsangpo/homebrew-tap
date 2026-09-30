class Devn < Formula
  desc "Project-aware Codex and Claude Code launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.2.0/devn-v0.2.0-darwin-arm64.tar.gz"
      sha256 "af378760121ba2d8453234f1ff0d0fa9a96dfe9299ab54739e72c951af90c559"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.2.0/devn-v0.2.0-darwin-x64.tar.gz"
      sha256 "c303da632af21b2801ba3491e711248a53ff3c66c4692f78600fe1bb942459d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.2.0/devn-v0.2.0-linux-arm64.tar.gz"
      sha256 "88639e9d72ace226bbdb1ba8fb4f8f5529d528e0bfee20fc0bb47a4639e9fc50"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.2.0/devn-v0.2.0-linux-x64.tar.gz"
      sha256 "95721f8bb8c2d231626dc600e66b9b6be4bf0148c0ba8d76bcca88b10917ffb3"
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
