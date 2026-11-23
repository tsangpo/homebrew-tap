class Shippy < Formula
  desc "Multi-server self-hosted PaaS CLI, local web hub, and MCP server"
  homepage "https://github.com/tsangpo/shippy"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/shippy-v0.1.0/shippy-aarch64-apple-darwin.tar.xz"
      sha256 "4435ce3c9e7f9b4af729d06cecdd5d4571c2fdec15eeb48cf4eff62575073b0a"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/shippy-v0.1.0/shippy-x86_64-apple-darwin.tar.xz"
      sha256 "62564a4b38fe273a93f488900650174696923436f844f9a6c7c748fa3c2f7ab7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/shippy-v0.1.0/shippy-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "300fbb30ab6dcade313ca08b2c9c3d5d6b2d643b0a9cc566bc514b46595855a6"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/shippy-v0.1.0/shippy-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "8c0f7152eb9f4e1ca683e2f44cf2fd1ee0066e4b3066628c5ea77ac7dd72d1e6"
    end
  end

  def install
    bin.install "shippy"
  end

  service do
    run [opt_bin/"shippy", "serve", "--host", "127.0.0.1", "--port", "7799"]
    keep_alive true
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shippy --version")
  end
end
