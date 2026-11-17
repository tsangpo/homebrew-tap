class HerdrWeb < Formula
  desc "Browser client daemon for herdr-core"
  homepage "https://github.com/tsangpo/herdr-web"
  version "0.1.9"

  depends_on "tsangpo/tap/git-web"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.9/herdr-web-aarch64-apple-darwin.tar.xz"
      sha256 "3eb9549fdfcf4450ba5e5f64f21641a1f9075e2a4c47cc329cdf853b1e05b2d7"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.9/herdr-web-x86_64-apple-darwin.tar.xz"
      sha256 "99973cc9574189c49d4adba348a55d282af7fed127c37d1d9979644fe6c75698"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.9/herdr-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "196eefe42b95fd2958dbec3b119f932edbb71d3bdc631e9b717ceb48445f40bd"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/herdr-web-v0.1.9/herdr-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "bf51baacf2caab9dd3bf27eef13d903d6e11e5dc4e9dd0b7b7011b6dc3235950"
    end
  end

  def install
    bin.install "herdr-web"
  end

  service do
    run [opt_bin/"herdr-web", "--host", "127.0.0.1", "--port", "7788"]
    keep_alive true
  end
end
