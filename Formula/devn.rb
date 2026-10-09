class Devn < Formula
  desc "Project-aware Codex, Claude Code and OpenCode launcher for Bifrost"
  homepage "https://github.com/tsangpo/devn"
  version "0.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.5/devn-v0.8.5-darwin-arm64.tar.gz"
      sha256 "230d79eb844cd32c24e68b250d677b97bfec8932c00b0fd4927fbe00a2c43d2b"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.5/devn-v0.8.5-darwin-x64.tar.gz"
      sha256 "71001a19bb5c44d9ba05145a8b266b19f24e6234bffeeb8cbcb77c0ea4aab1e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.5/devn-v0.8.5-linux-arm64.tar.gz"
      sha256 "97783765c08c7fbec2ad01554e33f16e072681da06ee64ac48facd42d870bea6"
    end
    on_intel do
      url "https://github.com/tsangpo/devn/releases/download/v0.8.5/devn-v0.8.5-linux-x64.tar.gz"
      sha256 "b482f8dc899f24ec846dd8bb34bb65a52f4bf2c79245ca069e6c31136c5efc0a"
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
