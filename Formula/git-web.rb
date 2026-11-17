class GitWeb < Formula
  desc "Web GitHub Desktop daemon serving a browser Git UI over HTTP and WebSocket"
  homepage "https://github.com/tsangpo/git-web"
  version "0.4.1"
  on_macos do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.4.1/git-web-aarch64-apple-darwin.tar.xz"
      sha256 "7d438ff1d1d679ec112a8062c38276995daadafe1c877471375814d35ffd381a"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.4.1/git-web-x86_64-apple-darwin.tar.xz"
      sha256 "7ff8a96bfa901c2f61d5b9d173b11d20c092cfe0558eb071eb968253e365568f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.4.1/git-web-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "51369cdbc67f5e34d8e0712aa9769d6a064138294ddbf246ed879ffd53a9063a"
    end
    on_intel do
      url "https://github.com/tsangpo/homebrew-tap/releases/download/git-web-v0.4.1/git-web-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "f6601ec61596ab1a8afd13c36d60ccd5f2c333d3dc71890e2433635f880a9a69"
    end
  end

  def install
    bin.install "git-web"
  end
end
